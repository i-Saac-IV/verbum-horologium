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
// Screen tables
// -------------------------

#include "word_clock.h"
#include "staircase_clock.h"
#include "digital_clock.h"
#include "progress_clock.h"

static const screen_render_fn_t screen_table[] = {
    word_clock_render,
    staircase_clock_render,
    digital_clock_render,
    progress_clock_render
};

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

#include "transitions.h"

static const transition_fn_t transitions_table[] = {
    transition_dissolve,
    transition_fade
};

// -------------------------
// Layers
// -------------------------

void clearLayers(void) {
    fill_solid(layer_bg.buffer, layer_bg.w * layer_bg.h, CRGB::Black);
    fill_solid(layer_fg.buffer, layer_fg.w * layer_fg.h, CRGB::Black);
    memset(layer_mask.buffer, 0, layer_mask.w * layer_mask.h);
}

void clearLayer(RenderTarget<CRGB>& layer) {
    fill_solid(layer.buffer, layer.w * layer.h, CRGB::Black);
}

void clearLayer(RenderTarget<uint8_t>& layer) {
    memset(layer.buffer, 0, layer.w * layer.h);
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

    screen_render_fn_t from_screen;
    screen_render_fn_t to_screen;

    transition_fn_t effect;

    uint32_t start_ms;
    uint32_t duration_ms;

    uint8_t noise[NUM_MATRIX_LEDS];
};

static TransitionState transition;

static screen_render_fn_t last_screen_fn = nullptr;
static DateTime last_rtc_time;

// -------------------------
// Init
// -------------------------

void renderer_init(void) {
    last_rtc_time = rtc_getTime();
    display_init();
}

// -------------------------
// Transition control
// -------------------------

void renderer_startTransition(screen_render_fn_t from,
                              screen_render_fn_t to,
                              transition_fn_t effect) {
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

void renderer_detectScreenChanges(AppState_t* app)
{
    if (app->mode != MODE_NORMAL) {
        return; // only animate clock screens
    }

    screen_render_fn_t current_screen_fn =
        screen_table[app->clock_screen];

    if (last_screen_fn == nullptr) {
        last_screen_fn = current_screen_fn;
        last_rtc_time = rtc_getTime();
        return;
    }

    DateTime now = rtc_getTime();

    // TIME CHANGE TRANSITION (12:04 → 12:05)
    if (now.minute() != last_rtc_time.minute()) {
        clock_transition.from_time = last_rtc_time;
        clock_transition.to_time = now;

        transition_fn_t effect =
            transitions_table[config.transition_effect];

        renderer_startTransition(
            current_screen_fn,
            current_screen_fn,
            effect
        );

        last_rtc_time = now;
    }

    // SCREEN CHANGE TRANSITION
    if (current_screen_fn != last_screen_fn) {
        transition_fn_t effect =
            transitions_table[config.transition_effect];

        renderer_startTransition(
            last_screen_fn,
            current_screen_fn,
            effect
        );

        last_screen_fn = current_screen_fn;
    }
}

// -------------------------
// Transition render
// -------------------------

void renderer_drawTransition(void) {
    uint32_t elapsed = millis() - transition.start_ms;

    if (elapsed > transition.duration_ms)
        elapsed = transition.duration_ms;

    uint8_t t = (elapsed * 255) / transition.duration_ms;

    clearLayers();

    // OLD FRAME (previous time)
    microGL_setTarget(layer_bg);
    if (transition.from_screen) {
        transition.from_screen(clock_transition.from_time);
    }

    // NEW FRAME (current time)
    microGL_setTarget(layer_fg);
    if (transition.to_screen) {
        transition.to_screen(clock_transition.to_time);
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

    renderer_detectScreenChanges(app);
    renderer_updateTransition();

    if (transition.active) {
        renderer_drawTransition();
    } else {
        clearLayers();

        microGL_setTarget(layer_bg);

        if (app->mode == MODE_NORMAL) {
            screen_render_fn_t current =
                screen_table[app->clock_screen];

            if (current) {
                current(rtc_getTime());
            }
        }
        else {
            settings_render_fn_t current =
                settings_table[app->settings_screen];

            if (current) {
                current();
            }
        }
    }

    inputEvent_t event;

    while (event_manager_popUI(&event)) {
        if (event.type == INPUT_EVENT_DOWN) {
            microGL_drawPixel(1, 7, CRGB(255, 255, 255));
        }
    }

    composeFrame();
    display_show();
}