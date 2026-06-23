/*

File:   startup_animation.cpp
Author: Isaac Pawley
Date:   23-06-2026

*/

#include "heartbeat.h"
#include "microGL.h"
#include <Arduino.h>

static bool heartbeat_triggered = false;

void heartbeat_trigger(void) {
    heartbeat_triggered = true;
}

void heartbeat_update(uint8_t target_x, uint8_t target_y) {
    static uint8_t current_x = 1;
    static uint8_t current_y = 7;

    static uint8_t val = 0;

    if (heartbeat_triggered) {
        val = 255;
        heartbeat_triggered = false;
    }

    microGL_setTarget(layer_bg);
    microGL_drawPixel(target_x, target_y, CHSV(0, 0, val));
    microGL_setTarget(layer_fg);
    microGL_drawPixel(target_x, target_y, CHSV(0, 0, val));

    val *= 0.95;
}
