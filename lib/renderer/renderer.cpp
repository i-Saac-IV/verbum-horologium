/*

File:   renderer.cpp
Author: Isaac Pawley
Date:   19-05-2026

*/

#include "renderer.h"
#include "display.h"
#include "main_fsm.h"

void renderer_init(void) {
    display_init();
}

typedef void (*screen_render_fn_t)(void);

#include "word_clock.h"
#include "staircase_clock.h"
#include "digital_clock.h"

static const screen_render_fn_t screen_table[] = {
    word_clock_displayTime,
    staircase_clock_displayTime,
    digital_clock_displayTime,
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

void renderer_update(void)
{
    display_fill(CRGB::Black);

    AppState_t* app = app_get();

    switch (app->mode) {
        case MODE_NORMAL:
            if (app->screen < SCREEN_COUNT) {
                screen_table[app->screen]();
            }
        break;

        case MODE_SETTINGS:
            if (app->settings_index < SETTINGS_COUNT) {
                settings_table[app->settings_index]();
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

    display_show();
}