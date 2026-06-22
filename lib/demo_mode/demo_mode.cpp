/*

File:   demo_mode.cpp
Author: Isaac Pawley
Date:   22-06-2026

*/

#include "demo_mode.h"
#include "config.h"
#include "event_manager.h"

#include <Arduino.h>

static unsigned long next_demo_action;

static const inputEventType_t demoEvents[] = {
    INPUT_EVENT_NEXT_SCREEN,
    INPUT_EVENT_PREV_SCREEN,
    INPUT_EVENT_NEXT_COLOR
};

static const size_t NUM_DEMO_EVENTS = sizeof(demoEvents) / sizeof(demoEvents[0]);

void demo_mode_init(void) {
    next_demo_action = millis() + random(MIN_ACTION_PERIOD, MAX_ACTION_PERIOD);
}

void demo_mode_triggerRandomAction(void) {
    inputEventType_t event = demoEvents[random(0, NUM_DEMO_EVENTS)];

    event_manager_push((inputEvent_t){
        .type   = event,
        .source = INPUT_SOURCE_DEMO_MODE
    });
}

void demo_mode_update(void) {
    if (!config.enable_demo) {
        return;
    }

    if (millis() > next_demo_action) {
        demo_mode_triggerRandomAction();
        next_demo_action = millis() + random(MIN_ACTION_PERIOD, MAX_ACTION_PERIOD);
    }
}