/*

File:   digital_clock.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "digital_clock.h"

#include "microGL.h"
#include "config.h"

void digital_clock_drawHours(uint8_t hour, const Palette& colors);
void digital_clock_drawMinutes(uint8_t minute, const Palette& colors);

void digital_clock_render(const DateTime& now, const Palette& colors) {
    digital_clock_drawHours(now.hour(), colors);
    digital_clock_drawMinutes(now.minute(), colors);
}

void digital_clock_drawHours(uint8_t hour, const Palette& colors) {
    if (config.time_format == TIME_FORMAT_12H) {
        hour = (hour % 12 == 0) ? 12 : hour % 12;
    }
    microGL_draw4x6Digit(1, 0, hour / 10, colors.colors[COLOR_0]);
    microGL_draw4x6Digit(7, 0, hour % 10, colors.colors[COLOR_0]);
}

void digital_clock_drawMinutes(uint8_t minute, const Palette& colors) {
    microGL_draw4x6Digit(1, 6, minute / 10, colors.colors[COLOR_2]);
    microGL_draw4x6Digit(7, 6, minute % 10, colors.colors[COLOR_2]);
}
