/*

File:   buttons.h
Author: Isaac Pawley
Date:   28-04-2026

*/

#ifndef INC_BUTTONS_H_
#define INC_BUTTONS_H_

#include <stdint.h>
#include <stdbool.h>

#define NUM_BUTTONS        3
#define LONG_PRESS_MS      800
#define PRESS_TIMEOUT_MS   5000

typedef enum {
    BUTTON_TOP = 0,
    BUTTON_RIGHT,
    BUTTON_LEFT
} button_id_t;

typedef enum {
    BUTTON_EVENT_NONE = 0,
    BUTTON_EVENT_SHORT_PRESS,
    BUTTON_EVENT_LONG_PRESS,
    BUTTON_EVENT_TIMEOUT
} button_event_t;

void buttons_init(void);
void buttons_update(void);
button_event_t buttons_getEvent(button_id_t button);

#endif /* INC_BUTTONS_H_ */