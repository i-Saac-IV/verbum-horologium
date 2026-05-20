/*

File:   staircase_clock.cpp
Author: Isaac Pawley
Date:   30-04-2026

*/

#include "staircase_clock.h"

#include "microGL.h"
#include "config.h"
#include "rtc.h"

void staircase_clock_drawHours(uint8_t hour) {
    if (config.time_format == TIME_FORMAT_12H) {
        hour = (hour % 12 == 0) ? 12 : hour % 12;
    }
    microGL_draw3x5Digit(0, 0, hour / 10, CHSV(0, 255, 255));
    microGL_draw3x5Digit(3, 2, hour % 10, CHSV(64, 255, 255));
}

void staircase_clock_drawMinutes(uint8_t minute) {
    microGL_draw3x5Digit(6, 5, minute / 10, CHSV(128, 255, 255));
    microGL_draw3x5Digit(9, 7, minute % 10, CHSV(192, 255, 255));
}

void staircase_clock_displayTime(void) {
    DateTime now = rtc_getTime();
    staircase_clock_drawHours(now.hour());
    staircase_clock_drawMinutes(now.minute());
}