/*

File:   renderer.cpp
Author: Isaac Pawley
Date:   19-05-2026

*/

#include "renderer.h"
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

void renderer_update(void) {
    inputEvent_t event;

    while (event_manager_popUI(&event)) {
        Serial.print("[UI ] ");

        Serial.print(source_names[event.source]);
        Serial.print(" -> ");

        Serial.println(event_names[event.type]);
    }
}