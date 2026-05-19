/*

File:   main_fsm.cpp
Author: Isaac Pawley
Date:   30-04-2026

*/

#include "event_manager.h"
#include <Arduino.h>

static const char *source_names[] = {
    "TOP",
    "LEFT",
    "RIGHT"
};

static const char *event_names[] = {
    "NONE",
    "DOWN",
    "UP",
    "SHORT",
    "LONG"
};

void fsm_update(void) {
    inputEvent_t event;

    while (event_manager_popFSM(&event)) {
        Serial.print("[FSM] ");

        Serial.print(source_names[event.source]);
        Serial.print(" -> ");

        Serial.println(event_names[event.type]);
    }
}