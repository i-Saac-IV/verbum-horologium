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
#include "transitions.h"
#include "palette.h"
#include "daylight_sensor.h"
#include <stdlib.h>
#include <string.h>

typedef void (*screen_render_fn_t)(const DateTime&, const Palette&);
typedef void (*transition_fn_t)(const TransitionContext&);
typedef void (*settings_render_fn_t)(void);

struct SecondsIndicator {
    uint8_t x, y;
};

struct ScreenDescriptor {
    screen_render_fn_t render;
    SecondsIndicator seconds_led;
};

// -------------------------
// Clock screens
// -------------------------

#include "word_clock.h"
#include "staircase_clock.h"
#include "digital_clock.h"
#include "progress_clock.h"

static const ScreenDescriptor screen_table[] = {
    { word_clock_render,      {1, 7}  },
    { staircase_clock_render, {1, 7}  },
    { digital_clock_render,   {2, 12} },
    { progress_clock_render,  {2, 12} }
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
    settings_screen_transitionEffect,
    settings_screen_colorMode
};

// -------------------------
// Transitions
// -------------------------

static const transition_fn_t transitions_table[] = {
    transition_dissolve,
    transition_fade
};

// -------------------------
// End of adjustable code
// -------------------------

void clearLayers(void) {
    fill_solid(layer_bg.buffer, NUM_MATRIX_LEDS, CRGB::Black);
    fill_solid(layer_fg.buffer, NUM_MATRIX_LEDS, CRGB::Black);
    memset(layer_mask.buffer, 0, NUM_MATRIX_LEDS);
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

static inline bool palette_equal(const Palette& a, const Palette& b) {
    for (uint8_t i = 0; i < NUM_COLORS; i++) {
        if (a.colors[i] != b.colors[i]) return false;
    }
    return true;
}

struct RenderState {
    const ScreenDescriptor* screen;
    DateTime time;
    Palette palette;
};

struct TransitionState {
    bool active = false;

    RenderState from;
    RenderState to;

    transition_fn_t effect;

    uint32_t start_ms;
    uint32_t duration_ms;

    uint8_t noise[NUM_MATRIX_LEDS];
};

static TransitionState transition;

static const ScreenDescriptor* last_screen = nullptr;
static DateTime last_rtc_time;

static uint8_t last_palette_index = 0;
static Palette current_palette;
static Palette target_palette;

// -------------------------
// Init
// -------------------------

void renderer_init(void) {
    AppState_t* app = app_get();
    DateTime* now = rtc_getTime();
    last_rtc_time = *now;
    target_palette = *palettes[app->palette % NUM_PALETTES];
    display_init();
}

void renderer_startTransition(const RenderState& from, const RenderState& to, transition_fn_t effect) {
    transition.active = true;
    transition.from = from;
    transition.to = to;
    transition.effect = effect;
    transition.start_ms = millis();
    transition.duration_ms = 500;

    for (int i = 0; i < NUM_MATRIX_LEDS; i++) {
        transition.noise[i] = rand() & 0xFF;
    }
}

void renderer_updateTransition() {
    if (!transition.active) return;

    if (millis() - transition.start_ms >= transition.duration_ms) {
        transition.active = false;

        last_screen = transition.to.screen;
        last_rtc_time = transition.to.time;
        current_palette = transition.to.palette;
    }
}

Palette makeRandomPalette() {
    Palette p;

    for (int i = 0; i < NUM_COLORS; i++) {
        p.colors[i] = CHSV(random(100, 255), random(175, 255), 255);
    }

    return p;
}

Palette shuffledPalette(const Palette& palette) {
    Palette result = palette;

    for (int i = NUM_COLORS - 1; i > 0; --i) {
        int j = random(i + 1);

        CRGB temp = result.colors[i];
        result.colors[i] = result.colors[j];
        result.colors[j] = temp;
    }

    return result;
}

void renderer_detectScreenChanges(AppState_t* app, DateTime* now)
{
    if (app->mode != MODE_NORMAL) {
        return;
    }

    if (transition.active) {
        return;
    }

    const ScreenDescriptor* current_screen = &screen_table[app->clock_screen];

    if (last_palette_index != app->palette) {
        if (config.color_mode == PALETTE) {
            target_palette = *palettes[app->palette % NUM_PALETTES];
        } else if (config.color_mode == PALETTE_RANDOMISED) {
            target_palette = shuffledPalette(*palettes[app->palette % NUM_PALETTES]);
        } else if (config.color_mode == PALETTE_RANDOM) {
            target_palette = makeRandomPalette();
        }
        last_palette_index = app->palette;
    }   

    if (last_screen == nullptr) {
        last_screen = current_screen;
        last_rtc_time = *now;
        current_palette = target_palette;
        return;
    }

    bool screen_changed = (current_screen != last_screen);
    bool minute_changed = (now->minute() != last_rtc_time.minute());
    bool palette_changed = !palette_equal(current_palette, target_palette);

    if (screen_changed || minute_changed || palette_changed) {

        if (!palette_changed) {
            if (config.color_mode == PALETTE_RANDOMISED) {
                target_palette = shuffledPalette(*palettes[app->palette % NUM_PALETTES]);
            } else if (config.color_mode == PALETTE_RANDOM) {
                target_palette = makeRandomPalette();
            }
        }

        RenderState from = {
            last_screen,
            last_rtc_time,
            current_palette
        };

        RenderState to = {
            current_screen,
            *now,
            target_palette
        };

        transition_fn_t effect = transitions_table[config.transition_effect];

        renderer_startTransition(from, to, effect);

        last_screen = current_screen;
        last_rtc_time = *now;
    }
}

void renderer_drawTransition(void) {
    uint32_t elapsed = millis() - transition.start_ms;

    if (elapsed > transition.duration_ms) {
        elapsed = transition.duration_ms;
    }        

    uint8_t t = (elapsed * 255) / transition.duration_ms;

    clearLayers();

    microGL_setTarget(layer_bg);
    if (transition.from.screen) {
        transition.from.screen->render(transition.from.time, transition.from.palette);
    }

    microGL_setTarget(layer_fg);
    if (transition.to.screen) {
        transition.to.screen->render(transition.to.time, transition.to.palette);
    }

    TransitionContext ctx;
    ctx.t = t;
    ctx.noise = transition.noise;

    if (transition.effect) {
        transition.effect(ctx);
    }
}

bool night_mode(DateTime& now) {
    if (!config.auto_sleep) {
        return false;
    }

    if (now.hour() >= config.nightMode_start || now.hour() <= config.nightMode_end) {
        if (daylight_sensor_getScaledBrightness(FRONT_SENSOR) < config.min_brightness + 10) {
            return true;
        }
    }
    return false;
}

void renderer_update(void) {
    AppState_t* app = app_get();
    DateTime* now = rtc_getTime();

    renderer_detectScreenChanges(app, now);
    renderer_updateTransition();

    static uint8_t val = 0;

    if (app->mode == MODE_NORMAL) {

        if (transition.active) {
            if (!night_mode(*now)) {
                renderer_drawTransition();
                val = 0;
            }
        } else {
            clearLayers();

            const ScreenDescriptor* screen = &screen_table[app->clock_screen];

            if (!night_mode(*now)) {
                microGL_setTarget(layer_bg);

                if (screen && screen->render) {
                    screen->render(*now, current_palette);
                }
            }

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
    } else {
        clearLayers();

        settings_render_fn_t current = settings_table[app->settings_screen];

        if (current) {
            current();
        }
    }

    inputEvent_t event;

    while (event_manager_popUI(&event)) {
        if (event.type == INPUT_EVENT_DOWN) {
            // Reaction?
        }
    }

    composeFrame();
    display_show();
}