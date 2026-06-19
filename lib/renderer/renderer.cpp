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

void renderer_update(void) {

    clearLayers();

    AppState_t* app = app_get();

    microGL_setTarget(layer_bg);

    switch (app->mode) {
        case MODE_NORMAL:
            if (app->clock_screen < CLOCK_SCREEN_COUNT) {
                screen_table[app->clock_screen]();
            }
        break;

        case MODE_SETTINGS:
            if (app->settings_screen < SETTINGS_SCREEN_COUNT) {
                settings_table[app->settings_screen]();
            }
        break;

        default:
            break;
    }

    inputEvent_t event;

    while (event_manager_popUI(&event)) {
        if (event.type == INPUT_EVENT_DOWN) {
            display_setPixel(1, 7, CRGB::White); // put real button reaction here...
        }
    }
    
    composeFrame();
    display_show();
}