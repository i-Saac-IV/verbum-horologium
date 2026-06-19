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

void progress_clock_render(const DateTime& now) {
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
        microGL_fillRectangle(0, 0, DISPLAY_WIDTH - 1, hour - 1, CRGB(0,0,255));
    }

    if (minute > 0) {
        microGL_fillRectangle(0, hour, minute - 1, hour, CRGB(255,0,0));
    }
}

void progress_clock_display24HourTime(DateTime now) {
    uint8_t minute = now.minute() / 10;

    if (now.hour() > 0) {
        if (now.hour() > 13) {
            microGL_fillRectangle(0, 0, DISPLAY_WIDTH / 2 - 1, DISPLAY_HEIGHT - 1, CRGB(0,0,255));
            microGL_fillRectangle(DISPLAY_WIDTH / 2, 0, DISPLAY_WIDTH - 1, now.hour() % 12 - 1, CRGB::Green);

            if (minute > 0) {
                microGL_fillRectangle(DISPLAY_WIDTH / 2, now.hour() % 12, minute - 1 + DISPLAY_WIDTH / 2, now.hour() % 12, CRGB(255,0,0));
            }
        } else {
            microGL_fillRectangle(0, 0, DISPLAY_WIDTH / 2 - 1, now.hour() % 12 - 1, CRGB(0,0,255));

            if (minute > 0) {
                microGL_fillRectangle(0, now.hour() % 12, minute - 1, now.hour() % 12, CRGB(255,0,0));
            }
        }
    }
}