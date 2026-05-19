/*

File:   buttons.h
Author: Isaac Pawley
Date:   28-04-2026

*/

#ifndef INC_BUTTONS_H_
#define INC_BUTTONS_H_

typedef enum {
    BUTTON_TOP = 0,
    BUTTON_RIGHT,
    BUTTON_LEFT,
    NUM_BUTTONS
} button_id_t;

typedef enum {
    BUTTON_EVENT_UP,
    BUTTON_EVENT_DOWN,
    BUTTON_EVENT_SHORT_PRESS,
    BUTTON_EVENT_LONG_PRESS,
    BUTTON_EVENT_NONE
} button_event_t;

void buttons_init(void);
void buttons_update(void);

#endif /* INC_BUTTONS_H_ */