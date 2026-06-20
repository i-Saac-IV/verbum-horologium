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

static CRGB color_a;
static CRGB color_b;

void digital_clock_render(const DateTime& now, bool pickNewColours) {
    if (pickNewColours) {
        if (config.color_mode == COLOR_MODE_PALETTE) {
            color_a = palette_getColor(COLOR_0);
            color_b = palette_getColor(COLOR_6);
        } else if (config.color_mode == COLOR_MODE_PALETTE_RANDOM) {
            uint8_t first_color = random(0, NUM_COLORS);
            color_a = palette_getColor((PaletteColorId)first_color);
            color_b = palette_getColor((PaletteColorId)random(0, NUM_COLORS));
            if (color_a == color_b) {
                color_b = palette_getColor((PaletteColorId)((first_color + 1) % NUM_COLORS));
            }
        } else {
            uint8_t hue = random(0, 256);
            uint8_t sat = random(100, 256);
            uint8_t val = random(200, 256);
            color_a = CHSV(hue, sat, val);
            color_b = CHSV(hue + 128, sat, val);
        }
    }

    digital_clock_drawHours(now.hour());
    digital_clock_drawMinutes(now.minute());
}

void digital_clock_drawHours(uint8_t hour) {
    if (config.time_format == TIME_FORMAT_12H) {
        hour = (hour % 12 == 0) ? 12 : hour % 12;
    }
    microGL_draw4x6Digit(1, 0, hour / 10, color_a);
    microGL_draw4x6Digit(7, 0, hour % 10, color_a);
}

void digital_clock_drawMinutes(uint8_t minute) {
    microGL_draw4x6Digit(1, 6, minute / 10, color_b);
    microGL_draw4x6Digit(7, 6, minute % 10, color_b);
}
