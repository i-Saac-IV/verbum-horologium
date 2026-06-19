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

void clearLayers(void) {
    fill_solid(layer_bg.buffer, layer_bg.w * layer_bg.h, CRGB::Black);
    fill_solid(layer_fg.buffer, layer_fg.w * layer_fg.h, CRGB::Black);
    memset(layer_mask.buffer, 0, layer_mask.w * layer_mask.h);
}

void clearLayer(RenderTarget<CRGB>& layer) {
    fill_solid(layer.buffer,layer.w * layer.h,CRGB::Black);
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

void renderer_init(void) {
    display_init();
}

typedef void (*screen_render_fn_t)(void);

#include "word_clock.h"
#include "staircase_clock.h"
#include "digital_clock.h"
#include "progress_clock.h"

static const screen_render_fn_t screen_table[] = {
    word_clock_displayTime,
    staircase_clock_displayTime,
    digital_clock_displayTime,
    progress_clock_displayTime
};

#include "settings_screen.h"

static const screen_render_fn_t settings_table[] = {
    settings_screen_timeFormat,
    settings_screen_minBrightness,
    settings_screen_maxBrightness,
    settings_screen_nightEnd,
    settings_screen_nightStart,
    settings_screen_autoSleep,
    settings_screen_enableDemo
};

struct TransitionState {
    bool active;

    screen_render_fn_t from_screen;
    screen_render_fn_t to_screen;

    uint32_t start_ms;
    uint32_t duration_ms;
};

static TransitionState transition;

static screen_render_fn_t last_screen_fn = nullptr;

void renderer_startTransition(screen_render_fn_t from, screen_render_fn_t to) {
    transition.active = true;
    transition.from_screen = from;
    transition.to_screen = to;
    transition.start_ms = millis();
    transition.duration_ms = 200;
}

void renderer_updateTransition() {
    if (!transition.active) {
        return;
    }

    uint32_t elapsed = millis() - transition.start_ms;

    if (elapsed >= transition.duration_ms) {
        transition.active = false;
    }
}

void renderer_detectScreenChanges(AppState_t* app)
{
    screen_render_fn_t current_screen_fn = (app->mode == MODE_NORMAL) ? screen_table[app->clock_screen] : settings_table[app->settings_screen];

    if (last_screen_fn == nullptr) {
        last_screen_fn = current_screen_fn;
        return;
    }

    if (current_screen_fn != last_screen_fn) {
        renderer_startTransition(last_screen_fn, current_screen_fn);
        last_screen_fn = current_screen_fn;
    }
}

void renderer_drawTransition(void) {
    uint32_t elapsed = millis() - transition.start_ms;

    uint8_t t = (elapsed * 255) / transition.duration_ms;
    if (t > 255) {
        t = 255;
    }

    microGL_setTarget(layer_bg);
    clearLayer(layer_bg);
    transition.from_screen();

    microGL_setTarget(layer_fg);
    clearLayer(layer_fg);
    transition.to_screen();

    for (int i = 0; i < NUM_MATRIX_LEDS; i++) {
        layer_mask.buffer[i] = t;
    }
}

void renderer_update(void) {
    AppState_t* app = app_get();

    renderer_detectScreenChanges(app);
    renderer_updateTransition();

    if (transition.active) {
        renderer_drawTransition();
    } else {
        clearLayers();

        microGL_setTarget(layer_bg);

        screen_render_fn_t current = (app->mode == MODE_NORMAL) ? screen_table[app->clock_screen] : settings_table[app->settings_screen];

        if (current) {
            current();
        }
    }

    inputEvent_t event;

    while (event_manager_popUI(&event)) {
        if (event.type == INPUT_EVENT_DOWN) {
            microGL_drawPixel(1, 7, CRGB(255, 255, 255)); // put real button reaction here...
        }
    }
    
    composeFrame();
    display_show();
}