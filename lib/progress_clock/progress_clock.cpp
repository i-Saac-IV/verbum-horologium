/*

    File:   progress_clock.cpp
    Author: Isaac Pawley
    Date:   19-05-2026

*/

#include "progress_clock.h"

#include "microGL.h"
#include "config.h"

void progress_clock_display12HourTime(DateTime now, const Palette& colors);
void progress_clock_display24HourTime(DateTime now, const Palette& colors);

void progress_clock_render(const DateTime& now, const Palette& colors) {
    if (config.time_format == TIME_FORMAT_12H) {
        progress_clock_display12HourTime(now, colors);
    } else {
        progress_clock_display24HourTime(now, colors);
    }
}

void progress_clock_display12HourTime(DateTime now, const Palette& colors) {
    uint8_t hour = now.hour() % 12;
    uint8_t minute = now.minute() / 5;

    if (hour > 0) {
        microGL_fillRectangle(0, 0, DISPLAY_WIDTH - 1, hour - 1, colors.colors[COLOR_0]);
    }

    if (minute > 0) {
        microGL_fillRectangle(0, hour, minute - 1, hour, colors.colors[COLOR_2]);
    }
}

void progress_clock_display24HourTime(DateTime now, const Palette& colors) {
    uint8_t minute = now.minute() / 10;

    if (now.hour() > 0) {
        if (now.hour() > 13) {
            microGL_fillRectangle(0, 0, DISPLAY_WIDTH / 2 - 1, DISPLAY_HEIGHT - 1, colors.colors[COLOR_0]);
            microGL_fillRectangle(DISPLAY_WIDTH / 2, 0, DISPLAY_WIDTH - 1, now.hour() % 12 - 1, colors.colors[COLOR_0]);

            if (minute > 0) {
                microGL_fillRectangle(DISPLAY_WIDTH / 2, now.hour() % 12, minute - 1 + DISPLAY_WIDTH / 2, now.hour() % 12, colors.colors[COLOR_2]);
            }
        } else {
            microGL_fillRectangle(0, 0, DISPLAY_WIDTH / 2 - 1, now.hour() % 12 - 1, colors.colors[COLOR_0]);

            if (minute > 0) {
                microGL_fillRectangle(0, now.hour() % 12, minute - 1, now.hour() % 12, colors.colors[COLOR_2]);
            }
        }
    }
}