/*

    File:   settings_screen.cpp
    Author: Isaac Pawley
    Date:   21-05-2026

*/

#include "settings_screen.h"
#include <stdint.h>
#include "microGL.h"
#include "main_fsm.h"
#include "word_layout.h"
#include "config.h"

void settings_screen_timeFormat(void) {
    Setting_t* s = fsm_get_current_setting();

    uint16_t val = (uint8_t)(*(s->value));

    if (val == TIME_FORMAT_24H) {
        word_layout_drawWord(WORD_TWENTY_MINUTE, CHSV(0, 255, 255));
        word_layout_drawWord(WORD_FOUR_HOUR, CHSV(128, 255, 255));
    } else {
        word_layout_drawWord(WORD_TWELVE_HOUR, CHSV(0, 255, 255));
    }

    if (g_app.settings_mode == SETTINGS_EDIT) {
        microGL_drawPixel(0, 0, CRGB::Red);
    } else {
        microGL_drawPixel(0, 0, CRGB::Green);
    }
}

void settings_screen_minBrightness(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    microGL_draw3x5Digit(0, 7, 0, CHSV(0, 255, 255));
    microGL_draw3x5Digit(3, 7, (val / 100) % 10, CHSV(64, 255, 255));
    microGL_draw3x5Digit(6, 7, (val / 10) % 10, CHSV(128, 255, 255));
    microGL_draw3x5Digit(9, 7, val % 10, CHSV(192, 255, 255));

    if (g_app.settings_mode == SETTINGS_EDIT) {
        microGL_drawPixel(1, 0, CRGB::Red);
    } else {
        microGL_drawPixel(1, 0, CRGB::Green);
    }
}

void settings_screen_maxBrightness(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    microGL_draw3x5Digit(0, 7, val / 1000, CHSV(0, 255, 255));
    microGL_draw3x5Digit(3, 7, val / 100, CHSV(64, 255, 255));
    microGL_draw3x5Digit(6, 7, val / 10, CHSV(128, 255, 255));
    microGL_draw3x5Digit(9, 7, val % 10, CHSV(192, 255, 255));

    if (g_app.settings_mode == SETTINGS_EDIT) {
        microGL_drawPixel(2, 0, CRGB::Red);
    } else {
        microGL_drawPixel(2, 0, CRGB::Green);
    }
}

void settings_screen_nightEnd(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    microGL_draw3x5Digit(0, 7, val / 1000, CHSV(0, 255, 255));
    microGL_draw3x5Digit(3, 7, val / 100, CHSV(64, 255, 255));
    microGL_draw3x5Digit(6, 7, val / 10, CHSV(128, 255, 255));
    microGL_draw3x5Digit(9, 7, val % 10, CHSV(192, 255, 255));

    if (g_app.settings_mode == SETTINGS_EDIT) {
        microGL_drawPixel(4, 0, CRGB::Red);
    } else {
        microGL_drawPixel(4, 0, CRGB::Green);
    }
}

void settings_screen_nightStart(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    microGL_draw3x5Digit(0, 7, val / 1000, CHSV(0, 255, 255));
    microGL_draw3x5Digit(3, 7, val / 100, CHSV(64, 255, 255));
    microGL_draw3x5Digit(6, 7, val / 10, CHSV(128, 255, 255));
    microGL_draw3x5Digit(9, 7, val % 10, CHSV(192, 255, 255));

    if (g_app.settings_mode == SETTINGS_EDIT) {
        microGL_drawPixel(3, 0, CRGB::Red);
    } else {
        microGL_drawPixel(3, 0, CRGB::Green);
    }
}

void settings_screen_autoSleep(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    microGL_draw3x5Digit(0, 7, val / 1000, CHSV(0, 255, 255));
    microGL_draw3x5Digit(3, 7, val / 100, CHSV(64, 255, 255));
    microGL_draw3x5Digit(6, 7, val / 10, CHSV(128, 255, 255));
    microGL_draw3x5Digit(9, 7, val % 10, CHSV(192, 255, 255));

    if (g_app.settings_mode == SETTINGS_EDIT) {
        microGL_drawPixel(5, 0, CRGB::Red);
    } else {
        microGL_drawPixel(5, 0, CRGB::Green);
    }
}

void settings_screen_enableDemo(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    microGL_draw3x5Digit(0, 7, val / 1000, CHSV(0, 255, 255));
    microGL_draw3x5Digit(3, 7, val / 100, CHSV(64, 255, 255));
    microGL_draw3x5Digit(6, 7, val / 10, CHSV(128, 255, 255));
    microGL_draw3x5Digit(9, 7, val % 10, CHSV(192, 255, 255));

    if (g_app.settings_mode == SETTINGS_EDIT) {
        microGL_drawPixel(6, 0, CRGB::Red);
    } else {
        microGL_drawPixel(6, 0, CRGB::Green);
    }
}