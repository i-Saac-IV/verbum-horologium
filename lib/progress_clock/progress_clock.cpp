/*

    File:   progress_clock.cpp
    Author: Isaac Pawley
    Date:   19-05-2026

*/

#include "progress_clock.h"

#include "microGL.h"
#include "config.h"

void progress_clock_display12HourTime(DateTime now);
void progress_clock_display24HourTime(DateTime now);

static CRGB color_a;
static CRGB color_b;

void progress_clock_render(const DateTime& now, Palette colors) {

    color_a = colors.colors[0];
    color_b = colors.colors[6];

    if (config.time_format == TIME_FORMAT_12H) {
        progress_clock_display12HourTime(now);
    } else {
        progress_clock_display24HourTime(now);
    }
}

void progress_clock_display12HourTime(DateTime now) {
    uint8_t hour = now.hour() % 12;
    uint8_t minute = now.minute() / 5;

    if (hour > 0) {
        microGL_fillRectangle(0, 0, DISPLAY_WIDTH - 1, hour - 1, color_a);
    }

    if (minute > 0) {
        microGL_fillRectangle(0, hour, minute - 1, hour, color_b);
    }
}

void progress_clock_display24HourTime(DateTime now) {
    uint8_t minute = now.minute() / 10;

    if (now.hour() > 0) {
        if (now.hour() > 13) {
            microGL_fillRectangle(0, 0, DISPLAY_WIDTH / 2 - 1, DISPLAY_HEIGHT - 1, color_a);
            microGL_fillRectangle(DISPLAY_WIDTH / 2, 0, DISPLAY_WIDTH - 1, now.hour() % 12 - 1, color_b);

            if (minute > 0) {
                microGL_fillRectangle(DISPLAY_WIDTH / 2, now.hour() % 12, minute - 1 + DISPLAY_WIDTH / 2, now.hour() % 12, color_b);
            }
        } else {
            microGL_fillRectangle(0, 0, DISPLAY_WIDTH / 2 - 1, now.hour() % 12 - 1, color_a);

            if (minute > 0) {
                microGL_fillRectangle(0, now.hour() % 12, minute - 1, now.hour() % 12, color_b);
            }
        }
    }
}