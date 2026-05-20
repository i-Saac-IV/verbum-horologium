/*

File:   main_fsm.h
Author: Isaac Pawley
Date:   30-04-2026

*/

#ifndef INC_MAIN_FSM_H_
#define INC_MAIN_FSM_H_

#include "event_manager.h"

typedef enum {
    MODE_NORMAL,
    MODE_SETTINGS,
} AppMode_t;

typedef enum {
    SCREEN_WORD,
    SCREEN_STAIRCASE,
    SCREEN_DIGITAL,
    SCREEN_COUNT
} Screen_t;

typedef enum {
    SETTINGS_BRIGHTNESS,
    SETTINGS_TIME_HOUR,
    SETTINGS_TIME_MINUTE,
} SettingsScreen_t;

typedef struct {
    AppMode_t mode;
    Screen_t screen;
    SettingsScreen_t settings_screen;
} AppState_t;

extern AppState_t g_app;

void fsm_init(void);
void fsm_update(void);
void action_next_screen(AppState_t* app);
void action_prev_screen(AppState_t* app);
void app_handle_event(AppState_t* app, inputEvent_t ev);
void action_enter_settings(AppState_t* app);
void action_exit_settings(AppState_t* app);
void action_settings_increment(AppState_t* app);
void action_settings_decrement(AppState_t* app);

#endif /* INC_MAIN_FSM_H_ */