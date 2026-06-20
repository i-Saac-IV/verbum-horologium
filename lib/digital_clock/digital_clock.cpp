/*

File:   digital_clock.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "digital_clock.h"

#include "microGL.h"
#include "config.h"
#include "palette.h"

void digital_clock_drawHours(uint8_t hour);
void digital_clock_drawMinutes(uint8_t minute);

void digital_clock_render(const DateTime& now) {
    digital_clock_drawHours(now.hour());
    digital_clock_drawMinutes(now.minute());
}

void digital_clock_drawHours(uint8_t hour) {
    if (config.time_format == TIME_FORMAT_12H) {
        hour = (hour % 12 == 0) ? 12 : hour % 12;
    }
    microGL_draw4x6Digit(1, 0, hour / 10, palette_getColor(COLOR_A));
    microGL_draw4x6Digit(7, 0, hour % 10, palette_getColor(COLOR_A));
}

void digital_clock_drawMinutes(uint8_t minute) {
    microGL_draw4x6Digit(1, 6, minute / 10, palette_getColor(COLOR_D));
    microGL_draw4x6Digit(7, 6, minute % 10, palette_getColor(COLOR_D));
}
