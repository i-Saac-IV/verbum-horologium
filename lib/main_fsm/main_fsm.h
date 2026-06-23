/*
File:   main_fsm.h
Author: Isaac Pawley
Date:   20-05-2026
*/

#pragma once

#include <stdint.h>
#include "event_manager.h"

// =====================================================
// APP MODES (top-level FSM)
// =====================================================

typedef enum {
    MODE_NORMAL = 0,
    MODE_SETTINGS,
} AppMode_t;

typedef enum {
    SETTINGS_IDLE = 0,
    SETTINGS_EDIT,
} SettingsMode_t;

typedef enum {
    CLOCK_SCREEN_WORD = 0,
    CLOCK_SCREEN_STAIRCASE,
    CLOCK_SCREEN_DIGITAL,
    CLOCK_SCREEN_PROGRESS,
    CLOCK_SCREEN_COUNT
} ClockScreen_t;

typedef enum {
    SETTINGS_SCREEN_TIME_FORMAT = 0,
    SETTINGS_SCREEN_MIN_BRIGHTNESS,
    SETTINGS_SCREEN_MAX_BRIGHTNESS,
    SETTINGS_SCREEN_NIGHT_END,
    SETTINGS_SCREEN_NIGHT_START,
    SETTINGS_SCREEN_AUTO_SLEEP,
    SETTINGS_SCREEN_ENABLE_DEMO,
    SETTINGS_SCREEN_TRANSITION_EFFECT,
    SETTINGS_SCREEN_COLOR_MODE,
    SETTINGS_SCREEN_SET_HOURS,
    SETTINGS_SCREEN_SET_MINUTES,
    SETTINGS_SCREEN_VERSION,
    SETTINGS_SCREEN_COUNT
} SettingsScreen_t;

typedef struct {
    AppMode_t mode;
    SettingsMode_t settings_mode;

    ClockScreen_t clock_screen;
    SettingsScreen_t settings_screen;

    uint8_t palette;
} AppState_t;

AppState_t* app_get(void);

typedef struct {
    uint8_t* value;
    uint8_t min;
    uint8_t max;
    uint8_t step;
} Setting_t;

extern Setting_t settings[];
extern const uint8_t SETTINGS_COUNT;
Setting_t* fsm_get_current_setting(void);

// =====================================================
// GLOBAL INSTANCE (declared extern)
// =====================================================

extern AppState_t app;

// =====================================================
// PUBLIC API
// =====================================================

#ifdef __cplusplus
extern "C" {
#endif

void fsm_init(void);
void fsm_update(void);
void app_handle_event(AppState_t* app, inputEvent_t ev);

// screen actions (optional external use)
void action_next_screen(AppState_t* app);
void action_prev_screen(AppState_t* app);

// settings entry point actions
void action_enter_settings(AppState_t* app);
void action_exit_settings(AppState_t* app);

#ifdef __cplusplus
}
#endif