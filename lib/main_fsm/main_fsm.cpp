/*

File:   main_fsm.cpp
Author: Isaac Pawley
Date:   30-04-2026

*/

#include "main_fsm.h"
#include <Arduino.h>

#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))

AppState_t g_app = {
    .mode = MODE_NORMAL,
    .screen = SCREEN_WORD,
};

typedef struct {
    AppMode_t current_mode;
    inputEvent_t event;

    AppMode_t next_mode;

    void (*action)(AppState_t* app);
} Transition_t;

static const Transition_t app_table[] = {

    // next screen
    {
        MODE_NORMAL,
        {INPUT_EVENT_SHORT_PRESS, INPUT_SOURCE_BUTTON_RIGHT},
        MODE_NORMAL,
        action_next_screen
    },

    // previous screen
    {
        MODE_NORMAL,
        {INPUT_EVENT_SHORT_PRESS, INPUT_SOURCE_BUTTON_LEFT},
        MODE_NORMAL,
        action_prev_screen
    },

    // enter settings
    {
        MODE_NORMAL,
        {INPUT_EVENT_LONG_PRESS, INPUT_SOURCE_BUTTON_TOP},
        MODE_SETTINGS,
        action_enter_settings
    },

    // exit settings
    {
        MODE_SETTINGS,
        {INPUT_EVENT_LONG_PRESS, INPUT_SOURCE_BUTTON_TOP},
        MODE_NORMAL,
        action_exit_settings
    },
};

void fsm_init(void) {
    // Nothing to init
}

void fsm_update(void) {
    inputEvent_t ev;

    while (event_manager_popFSM(&ev)) {
        app_handle_event(&g_app, ev);
    }
}

void action_next_screen(AppState_t* app) {
    app->screen = (Screen_t)(app->screen + 1);

    if (app->screen >= SCREEN_COUNT) {
        app->screen = (Screen_t)0;
    }
}

void action_prev_screen(AppState_t* app) {
    if (app->screen == 0) {
        app->screen = (Screen_t)(SCREEN_COUNT - 1);
    } else {
        app->screen = (Screen_t)(app->screen - 1);
    }
}

void app_handle_event(AppState_t* app, inputEvent_t ev) {
    for (size_t i = 0; i < ARRAY_SIZE(app_table); i++) {
        const Transition_t* t = &app_table[i];

        if (t->current_mode == app->mode && t->event.type == ev.type && t->event.source == ev.source) {
            app->mode = t->next_mode;

            if (t->action) {
                t->action(app);
            }
            return;
        }
    }
}

void action_enter_settings(AppState_t* app) {
    app->settings_screen = SETTINGS_BRIGHTNESS;
}

void action_exit_settings(AppState_t* app) {

}

void action_settings_increment(AppState_t* app) {

}

void action_settings_decrement(AppState_t* app) {

}