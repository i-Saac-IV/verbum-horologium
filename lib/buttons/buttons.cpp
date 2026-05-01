/*

File:   buttons.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "buttons.h"
#include <Arduino.h>
#include <Adafruit_CAP1188.h>

Adafruit_CAP1188 cap = Adafruit_CAP1188();

typedef struct {
    bool currently_pressed;
    uint32_t press_start;
    button_event_t pending_event;
    bool long_press_sent;
    bool timeout_sent;
} button_t;

static button_t buttons[NUM_BUTTONS];
static uint8_t last_touched = 0;

void buttons_init(void) {
    cap.begin();

    for (uint8_t i = 0; i < NUM_BUTTONS; i++) {
        buttons[i].currently_pressed = false;
        buttons[i].press_start = 0;
        buttons[i].pending_event = BUTTON_EVENT_NONE;
        buttons[i].long_press_sent = false;
        buttons[i].timeout_sent = false;
    }
}

void buttons_update(void) {
    uint8_t touched = cap.touched();
    uint32_t now = millis();

    for (uint8_t i = 0; i < NUM_BUTTONS; i++) {

        uint8_t mask = (1 << i);

        bool was_pressed = (last_touched & mask);
        bool is_pressed  = (touched & mask);

        button_t *btn = &buttons[i];

        // ---------- NEW PRESS (RISING EDGE) ----------
        if (is_pressed && !was_pressed) {
            btn->currently_pressed = true;
            btn->press_start = now;

            btn->long_press_sent = false;
            btn->timeout_sent = false;

            btn->pending_event = BUTTON_EVENT_SHORT_PRESS;
        }

        // ---------- HELD ----------
        if (is_pressed && was_pressed) {
            uint32_t held = now - btn->press_start;

            if (held >= PRESS_TIMEOUT_MS && !btn->timeout_sent) {
                btn->pending_event = BUTTON_EVENT_TIMEOUT;
                btn->timeout_sent = true;
            }
            else if (held >= LONG_PRESS_MS && !btn->long_press_sent) {
                btn->pending_event = BUTTON_EVENT_LONG_PRESS;
                btn->long_press_sent = true;
            }
        }

        // ---------- RELEASE ----------
        if (!is_pressed && was_pressed) {
            btn->currently_pressed = false;
        }
    }

    last_touched = touched;
}

button_event_t buttons_getEvent(button_id_t button) {
    if (button >= NUM_BUTTONS) {
        return BUTTON_EVENT_NONE;
    }

    button_event_t event = buttons[button].pending_event;
    buttons[button].pending_event = BUTTON_EVENT_NONE;

    return event;
}