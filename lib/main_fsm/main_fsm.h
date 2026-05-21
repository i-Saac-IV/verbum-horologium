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

// =====================================================
// SETTINGS SUB-MODES
// =====================================================

typedef enum {
    SETTINGS_IDLE = 0,
    SETTINGS_EDIT,
} SettingsMode_t;

// =====================================================
// SCREEN MODES (your existing UI screens)
// =====================================================

typedef enum {
    SCREEN_WORD = 0,
    SCREEN_STAIRCASE,
    SCREEN_DIGITAL,
    SCREEN_COUNT
} Screen_t;

// =====================================================
// GLOBAL APP STATE
// =====================================================

typedef struct {
    AppMode_t mode;
    Screen_t screen;

    // settings FSM state
    SettingsMode_t settings_mode;
    uint8_t settings_index;
    bool settings_dirty;
} AppState_t;

AppState_t* app_get(void);

typedef struct {
    const char* name;
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

extern AppState_t g_app;

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