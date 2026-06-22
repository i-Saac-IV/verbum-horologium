/*

File:   event_manager.h
Author: Isaac Pawley
Date:   01-05-2026

*/

#ifndef INC_EVENT_MANAGER_H_
#define INC_EVENT_MANAGER_H_

typedef enum {
    INPUT_EVENT_NONE = 0,

    INPUT_EVENT_DOWN,
    INPUT_EVENT_UP,

    INPUT_EVENT_SHORT_PRESS,
    INPUT_EVENT_LONG_PRESS,

    INPUT_EVENT_NEXT_SCREEN,
    INPUT_EVENT_PREV_SCREEN,
    INPUT_EVENT_NEXT_COLOR
} inputEventType_t;

typedef enum {
    INPUT_SOURCE_BUTTON_TOP,
    INPUT_SOURCE_BUTTON_LEFT,
    INPUT_SOURCE_BUTTON_RIGHT,
    INPUT_SOURCE_DEMO_MODE
} inputSource_t;

typedef struct {
    inputEventType_t type;
    inputSource_t source;
} inputEvent_t;

void event_manager_init(void);

void event_manager_push(inputEvent_t event);

bool event_manager_popFSM(inputEvent_t *event);
bool event_manager_popUI(inputEvent_t *event);

#endif /* INC_EVENT_MANAGER_H_ */