/*
    File:   main_fsm.cpp
    Author: Isaac Pawley
    Date:   20-05-2026
*/

#include "main_fsm.h"
#include <Arduino.h>

#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))

// =====================================================
// GLOBAL APP STATE
// =====================================================

AppState_t g_app = {
    .mode = MODE_NORMAL,
    .screen = SCREEN_WORD,
    .settings_mode = SETTINGS_IDLE,
    .settings_index = 0,
    .settings_dirty = false,
};

AppState_t* app_get(void)
{
    return &g_app;
}

// =====================================================
// SETTINGS MODEL (example)
// =====================================================

#include "config.h"

Setting_t settings[] = {

    {"Time Format",      (uint8_t*)&config.time_format,      0, 1, 1},
    {"Min Brightness",   (uint8_t*)&config.min_brightness,   0, 255, 5},
    {"Max Brightness",   (uint8_t*)&config.max_brightness,   0, 255, 5},
    {"Night End",        (uint8_t*)&config.nightMode_end,    0, 23, 1},
    {"Night Start",      (uint8_t*)&config.nightMode_start,  0, 23, 1},
    {"Auto Sleep",       (uint8_t*)&config.auto_sleep,       0, 1, 1},
    {"Enable Demo",      (uint8_t*)&config.enable_demo,      0, 1, 1},
};

const uint8_t SETTINGS_COUNT = sizeof(settings) / sizeof(settings[0]);

Setting_t* fsm_get_current_setting(void) {
    return &settings[g_app.settings_index];
}

// =====================================================
// FSM TYPES
// =====================================================

typedef struct {
    uint8_t current_mode;
    inputEvent_t event;
    uint8_t next_mode;
    void (*action)(AppState_t* app);
} Transition_t;

// =====================================================
// MAIN ACTIONS
// =====================================================

void action_next_screen(AppState_t* app);
void action_prev_screen(AppState_t* app);
void action_enter_settings(AppState_t* app);

// =====================================================
// SETTINGS ACTIONS
// =====================================================

void action_settings_next(AppState_t* app);
void action_settings_prev(AppState_t* app);
void action_settings_begin_edit(AppState_t* app);
void action_settings_save(AppState_t* app);
void action_settings_cancel(AppState_t* app);
void action_settings_increment(AppState_t* app);
void action_settings_decrement(AppState_t* app);
void action_exit_settings(AppState_t* app);

// =====================================================
// MAIN FSM TABLE
// =====================================================

// =====================================================
// PUBLIC ENTRY POINT
// =====================================================

void fsm_update(void)
{
    inputEvent_t ev;

    while (event_manager_popFSM(&ev))
    {
        app_handle_event(&g_app, ev);
    }
}

static const Transition_t app_table[] = {

    { MODE_NORMAL,
      {INPUT_EVENT_SHORT_PRESS, INPUT_SOURCE_BUTTON_RIGHT},
      MODE_NORMAL,
      action_next_screen },

    { MODE_NORMAL,
      {INPUT_EVENT_SHORT_PRESS, INPUT_SOURCE_BUTTON_LEFT},
      MODE_NORMAL,
      action_prev_screen },

    { MODE_NORMAL,
      {INPUT_EVENT_LONG_PRESS, INPUT_SOURCE_BUTTON_TOP},
      MODE_SETTINGS,
      action_enter_settings },
};

// =====================================================
// SETTINGS SUB-FSM
// =====================================================

#define SETTINGS_IDLE_MODE  0
#define SETTINGS_EDIT_MODE  1

static const Transition_t settings_table[] = {

    // scroll
    { SETTINGS_IDLE_MODE,
      {INPUT_EVENT_SHORT_PRESS, INPUT_SOURCE_BUTTON_RIGHT},
      SETTINGS_IDLE_MODE,
      action_settings_next },

    { SETTINGS_IDLE_MODE,
      {INPUT_EVENT_SHORT_PRESS, INPUT_SOURCE_BUTTON_LEFT},
      SETTINGS_IDLE_MODE,
      action_settings_prev },

    // enter edit
    { SETTINGS_IDLE_MODE,
      {INPUT_EVENT_SHORT_PRESS, INPUT_SOURCE_BUTTON_TOP},
      SETTINGS_EDIT_MODE,
      action_settings_begin_edit },

    // EXIT SETTINGS (NEW)
    { SETTINGS_IDLE_MODE,
      {INPUT_EVENT_LONG_PRESS, INPUT_SOURCE_BUTTON_TOP},
      SETTINGS_IDLE_MODE,
      action_exit_settings },

    // edit mode adjust
    { SETTINGS_EDIT_MODE,
      {INPUT_EVENT_SHORT_PRESS, INPUT_SOURCE_BUTTON_RIGHT},
      SETTINGS_EDIT_MODE,
      action_settings_increment },

    { SETTINGS_EDIT_MODE,
      {INPUT_EVENT_SHORT_PRESS, INPUT_SOURCE_BUTTON_LEFT},
      SETTINGS_EDIT_MODE,
      action_settings_decrement },

    // save / exit edit
    { SETTINGS_EDIT_MODE,
      {INPUT_EVENT_SHORT_PRESS, INPUT_SOURCE_BUTTON_TOP},
      SETTINGS_IDLE_MODE,
      action_settings_save },

    { SETTINGS_EDIT_MODE,
      {INPUT_EVENT_LONG_PRESS, INPUT_SOURCE_BUTTON_TOP},
      SETTINGS_IDLE_MODE,
      action_settings_cancel },
};

// =====================================================
// INIT
// =====================================================

void fsm_init(void) {}

// =====================================================
// EVENT DISPATCHER
// =====================================================

void app_handle_event(AppState_t* app, inputEvent_t ev)
{
    const Transition_t* table = nullptr;
    size_t table_size = 0;
    uint8_t current_mode = app->mode;

    if (app->mode == MODE_SETTINGS)
    {
        table = settings_table;
        table_size = ARRAY_SIZE(settings_table);

        current_mode = (app->settings_mode == SETTINGS_EDIT_MODE)
            ? SETTINGS_EDIT_MODE
            : SETTINGS_IDLE_MODE;
    }
    else
    {
        table = app_table;
        table_size = ARRAY_SIZE(app_table);
    }

    for (size_t i = 0; i < table_size; i++)
    {
        const Transition_t* t = &table[i];

        if (t->current_mode == current_mode &&
            t->event.type == ev.type &&
            t->event.source == ev.source)
        {
            if (app->mode == MODE_SETTINGS)
                app->settings_mode = (SettingsMode_t)t->next_mode;
            else
                app->mode = (AppMode_t)t->next_mode;

            if (t->action)
                t->action(app);

            return;
        }
    }
}

// =====================================================
// ACTIONS
// =====================================================

void action_next_screen(AppState_t* app)
{
    app->screen = (Screen_t)(app->screen + 1);
    if (app->screen >= SCREEN_COUNT)
        app->screen = (Screen_t)0;
}

void action_prev_screen(AppState_t* app)
{
    if (app->screen == 0)
        app->screen = (Screen_t)(SCREEN_COUNT - 1);
    else
        app->screen = (Screen_t)(app->screen - 1);
}

void action_enter_settings(AppState_t* app)
{
    app->mode = MODE_SETTINGS;
    app->settings_mode = SETTINGS_IDLE;
    app->settings_index = 0;
    app->settings_dirty = false;
}

// =====================================================
// SETTINGS ACTIONS
// =====================================================

void action_settings_next(AppState_t* app)
{
    app->settings_index = (app->settings_index + 1) % SETTINGS_COUNT;
}

void action_settings_prev(AppState_t* app)
{
    if (app->settings_index == 0)
        app->settings_index = SETTINGS_COUNT - 1;
    else
        app->settings_index--;
}

void action_settings_begin_edit(AppState_t* app)
{
    app->settings_dirty = false;
}

void action_settings_increment(AppState_t* app)
{
    Setting_t* s = &settings[app->settings_index];

    if (*s->value < s->max) {
        *s->value += s->step;
        if (*s->value > s->max) {
            *s->value = s->max;
        }
    } else {
        *s->value = s->min;
    }

    app->settings_dirty = true;
}

void action_settings_decrement(AppState_t* app)
{
    Setting_t* s = &settings[app->settings_index];

    if (*s->value > s->min) {
        *s->value -= s->step;
        if (*s->value < s->min) {
            *s->value = s->min;
        }
    } else {
        *s->value = s->max;
    }

    app->settings_dirty = true;
}

void action_settings_save(AppState_t* app)
{
    app->settings_mode = SETTINGS_IDLE;
}

void action_settings_cancel(AppState_t* app)
{
    app->settings_mode = SETTINGS_IDLE;
}

// NEW: EXIT SETTINGS
void action_exit_settings(AppState_t* app)
{
    app->settings_mode = SETTINGS_IDLE;
    app->mode = MODE_NORMAL;
}