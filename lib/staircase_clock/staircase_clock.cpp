/*

File:   staircase_clock.cpp
Author: Isaac Pawley
Date:   30-04-2026

*/

#include "staircase_clock.h"

#include "microGL.h"
#include "config.h"

static CRGB color_a;
static CRGB color_b;
static CRGB color_c;
static CRGB color_d;

void staircase_clock_drawHours(uint8_t hour);
void staircase_clock_drawMinutes(uint8_t minute);

void staircase_clock_render(const DateTime& now, Palette colors) {

    color_a = colors.colors[COLOR_0];
    color_b = colors.colors[COLOR_3];
    color_c = colors.colors[COLOR_6];
    color_d = colors.colors[COLOR_9];

    staircase_clock_drawHours(now.hour());
    staircase_clock_drawMinutes(now.minute());
}

void staircase_clock_drawHours(uint8_t hour) {
    if (config.time_format == TIME_FORMAT_12H) {
        hour = (hour % 12 == 0) ? 12 : hour % 12;
    }
    microGL_draw3x5Digit(0, 0, hour / 10, color_a);
    microGL_draw3x5Digit(3, 2, hour % 10, color_b);
}

void staircase_clock_drawMinutes(uint8_t minute) {
    microGL_draw3x5Digit(6, 5, minute / 10, color_c);
    microGL_draw3x5Digit(9, 7, minute % 10, color_d);
}