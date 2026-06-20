/*

File:   renderer.cpp
Author: Isaac Pawley
Date:   19-05-2026

*/

#include "renderer.h"
#include "display.h"
#include "main_fsm.h"
#include "render_target.h"
#include "microGL.h"
#include "config.h"
#include "rtc.h"
#include <stdlib.h>

// -------------------------
// Function pointer types
// -------------------------

typedef void (*screen_render_fn_t)(const DateTime&);
typedef void (*settings_render_fn_t)(void);

#include "transitions.h"
using transition_fn_t = void (*)(const TransitionContext&);

// -------------------------
// Screen descriptor system
// -------------------------

struct SecondsIndicator {
    uint8_t x, y;
};

struct ScreenDescriptor {
    screen_render_fn_t render;
    SecondsIndicator seconds_led;
};

// -------------------------
// Screens
// -------------------------

#include "word_clock.h"
#include "staircase_clock.h"
#include "digital_clock.h"
#include "progress_clock.h"

static const ScreenDescriptor screen_table[] = {
    { word_clock_render,      {1, 7}  },
    { staircase_clock_render, {1, 7}  },
    { digital_clock_render,   {2, 12} },
    { progress_clock_render,  {2, 12}  }
};

// -------------------------
// Settings screens
// -------------------------

#include "settings_screen.h"

static const settings_render_fn_t settings_table[] = {
    settings_screen_timeFormat,
    settings_screen_minBrightness,
    settings_screen_maxBrightness,
    settings_screen_nightEnd,
    settings_screen_nightStart,
    settings_screen_autoSleep,
    settings_screen_enableDemo,
    settings_screen_transitionEffect
};

// -------------------------
// Transitions
// -------------------------

#include "transitions.h"

static const transition_fn_t transitions_table[] = {
    transition_dissolve,
    transition_fade
};

// -------------------------
// Layers
// -------------------------

void clearLayers(void) {
    fill_solid(layer_bg.buffer, NUM_MATRIX_LEDS, CRGB::Black);
    fill_solid(layer_fg.buffer, NUM_MATRIX_LEDS, CRGB::Black);
    memset(layer_mask.buffer, 0, NUM_MATRIX_LEDS);
}

void clearLayer(RenderTarget<CRGB>& layer) {
    fill_solid(layer.buffer, NUM_MATRIX_LEDS, CRGB::Black);
}

void clearLayer(RenderTarget<uint8_t>& layer) {
    memset(layer.buffer, 0, NUM_MATRIX_LEDS);
}

void composeFrame(void) {
    for (int i = 0; i < NUM_MATRIX_LEDS; i++) {
        CRGB bgc = layer_bg.buffer[i];
        CRGB fgc = layer_fg.buffer[i];
        uint8_t m = layer_mask.buffer[i];

        CRGB out;
        out.r = (fgc.r * m + bgc.r * (255 - m)) >> 8;
        out.g = (fgc.g * m + bgc.g * (255 - m)) >> 8;
        out.b = (fgc.b * m + bgc.b * (255 - m)) >> 8;

        led_matrix[i] = out;
    }
}

// -------------------------
// Transition state
// -------------------------

struct ClockTransitionState {
    DateTime from_time;
    DateTime to_time;
};

static ClockTransitionState clock_transition;

struct TransitionState {
    bool active;

    const ScreenDescriptor* from_screen;
    const ScreenDescriptor* to_screen;

    transition_fn_t effect;

    uint32_t start_ms;
    uint32_t duration_ms;

    uint8_t noise[NUM_MATRIX_LEDS];
};

static TransitionState transition;

static const ScreenDescriptor* last_screen = nullptr;
static DateTime last_rtc_time;

// -------------------------
// Init
// -------------------------

void renderer_init(void) {
    DateTime* now = rtc_getTime();

    last_rtc_time = *now;

    clock_transition.from_time = *now;
    clock_transition.to_time   = *now;

    display_init();
}

// -------------------------
// Transition control
// -------------------------

void renderer_startTransition(const ScreenDescriptor* from,
                              const ScreenDescriptor* to,
                              transition_fn_t effect)
{
    transition.active = true;
    transition.from_screen = from;
    transition.to_screen = to;
    transition.effect = effect;
    transition.start_ms = millis();
    transition.duration_ms = 500;

    for (int i = 0; i < NUM_MATRIX_LEDS; i++) {
        transition.noise[i] = rand() & 0xFF;
    }
}

void renderer_updateTransition() {
    if (!transition.active) return;

    uint32_t elapsed = millis() - transition.start_ms;

    if (elapsed >= transition.duration_ms) {
        transition.active = false;
    }
}

// -------------------------
// Screen change detection
// -------------------------

void renderer_detectScreenChanges(AppState_t* app, DateTime* now)
{
    if (app->mode != MODE_NORMAL) return;

    const ScreenDescriptor* current_screen =
        &screen_table[app->clock_screen];

    if (last_screen == nullptr) {
        last_screen = current_screen;
        last_rtc_time = *now;
        return;
    }

    if (now->minute() != last_rtc_time.minute()) {
        clock_transition.from_time = last_rtc_time;
        clock_transition.to_time = *now;

        transition_fn_t effect =
            transitions_table[config.transition_effect];

        renderer_startTransition(
            current_screen,
            current_screen,
            effect
        );

        last_rtc_time = *now;
    }

    if (current_screen != last_screen) {
        transition_fn_t effect =
            transitions_table[config.transition_effect];

        renderer_startTransition(
            last_screen,
            current_screen,
            effect
        );

        last_screen = current_screen;
    }
}

// -------------------------
// Transition rendering
// -------------------------

void renderer_drawTransition(void) {
    uint32_t elapsed = millis() - transition.start_ms;

    if (elapsed > transition.duration_ms)
        elapsed = transition.duration_ms;

    uint8_t t = (elapsed * 255) / transition.duration_ms;

    clearLayers();

    microGL_setTarget(layer_bg);
    if (transition.from_screen && transition.from_screen->render) {
        transition.from_screen->render(clock_transition.from_time);
    }

    microGL_setTarget(layer_fg);
    if (transition.to_screen && transition.to_screen->render) {
        transition.to_screen->render(clock_transition.to_time);
    }

    TransitionContext ctx;
    ctx.t = t;
    ctx.noise = transition.noise;

    if (transition.effect) {
        transition.effect(ctx);
    }
}

// -------------------------
// Main update
// -------------------------

void renderer_update(void) {
    AppState_t* app = app_get();
    DateTime* now = rtc_getTime();

    renderer_detectScreenChanges(app, now);
    renderer_updateTransition();

    static uint8_t val = 0;

    if (transition.active) {
        renderer_drawTransition();
        val = 0;
    } else {
        clearLayers();

        microGL_setTarget(layer_bg);

        const ScreenDescriptor* screen =
            &screen_table[app->clock_screen];

        if (screen && screen->render) {
            screen->render(*now);

            static uint32_t next_tick = 0;

            if (millis() >= next_tick) {
                next_tick = millis() + 1000;
                microGL_drawPixel(screen->seconds_led.x, screen->seconds_led.y, CRGB(255, 255, 255));
                val = 255;
            } else {
                microGL_drawPixel(screen->seconds_led.x, screen->seconds_led.y, CRGB(val, val, val));
                val *= 0.90;
            }
        }
    }

    inputEvent_t event;

    while (event_manager_popUI(&event)) {
        if (event.type == INPUT_EVENT_DOWN) {
            //microGL_drawPixel(2, 12, CRGB(0, 255, 0));
        }
    }

    composeFrame();
    display_show();
}