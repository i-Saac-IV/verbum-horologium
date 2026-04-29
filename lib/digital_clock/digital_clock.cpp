/*

File:   digital_clock.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "digital_clock.h"

#include "microGL.h"
#include "rtc.h"

void digital_clock_drawHours(uint8_t hour) {
    microGL_draw4x6Digit(1, 0, hour / 10, CRGB::Red);
    microGL_draw4x6Digit(7, 0, hour % 10, CRGB::Red);
}

void digital_clock_drawMinutes(uint8_t minute) {
    microGL_draw4x6Digit(1, 6, minute / 10, CRGB::Green);
    microGL_draw4x6Digit(7, 6, minute % 10, CRGB::Green);
}

void digital_clock_displayTime(void) {
    DateTime now = rtc_getTime();
    digital_clock_drawHours(now.hour());
    digital_clock_drawMinutes(now.minute());
    //digial_clock_updateHeartbeat(now.second());
}