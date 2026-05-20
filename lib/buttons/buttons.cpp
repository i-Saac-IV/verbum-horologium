/*

File:   buttons.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "buttons.h"
#include "event_manager.h"

#include <Arduino.h>
#include <Adafruit_CAP1188.h>

#define LONG_PRESS_MS 800

Adafruit_CAP1188 cap = Adafruit_CAP1188();

typedef struct {
    uint32_t press_start;
} button_t;

static button_t buttons[NUM_BUTTONS];
static uint8_t last_touched = 0;

static const inputSource_t button_sources[NUM_BUTTONS] = {
    INPUT_SOURCE_BUTTON_TOP,
    INPUT_SOURCE_BUTTON_LEFT,
    INPUT_SOURCE_BUTTON_RIGHT
};

void buttons_init(void) {
    cap.begin();

    for (uint8_t i = 0; i < NUM_BUTTONS; i++) {
        buttons[i].press_start = 0;
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

        /* ---------- PRESS START ---------- */

        if (is_pressed && !was_pressed) {

            btn->press_start = now;

            event_manager_push((inputEvent_t) {
                .type   = INPUT_EVENT_DOWN,
                .source = button_sources[i]
            });
        }

        /* ---------- RELEASE ---------- */

        if (!is_pressed && was_pressed) {

            uint32_t held = now - btn->press_start;

            event_manager_push((inputEvent_t) {
                .type = (held >= LONG_PRESS_MS)
                        ? INPUT_EVENT_LONG_PRESS
                        : INPUT_EVENT_SHORT_PRESS,
                .source = button_sources[i]
            });

            event_manager_push((inputEvent_t) {
                .type   = INPUT_EVENT_UP,
                .source = button_sources[i]
            });
        }
    }

    last_touched = touched;
}