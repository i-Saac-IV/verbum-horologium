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

void setting_screen_indicator(uint8_t settings_index, uint8_t settings_mode) {
    if (settings_mode == SETTINGS_EDIT) {
        microGL_drawPixel(settings_index % 12, settings_index / 12, CRGB(255, 0, 0));
    } else {
        microGL_drawPixel(settings_index % 12, settings_index / 12, CRGB(0, 255, 0));
    }
}

void setting_screen_drawDigits(uint16_t value) {
    microGL_draw3x5Digit(0, 7, (value / 1000) % 10, CHSV(0, 255, 255));
    microGL_draw3x5Digit(3, 7, (value / 100) % 10, CHSV(64, 255, 255));
    microGL_draw3x5Digit(6, 7, (value / 10) % 10, CHSV(128, 255, 255));
    microGL_draw3x5Digit(9, 7, value % 10, CHSV(192, 255, 255));
}

void settings_screen_timeFormat(void) {
    Setting_t* s = fsm_get_current_setting();

    uint16_t val = (uint8_t)(*(s->value));

    if (val == TIME_FORMAT_24H) {
        word_layout_drawWord(WORD_TWENTY_MINUTE, CRGB::White);
        word_layout_drawWord(WORD_FOUR_HOUR, CRGB::White);
    } else {
        word_layout_drawWord(WORD_TWELVE_HOUR, CRGB::White);
    }

    setting_screen_indicator(0, app.settings_mode);
}

void settings_screen_minBrightness(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    setting_screen_drawDigits(val);

    setting_screen_indicator(1, app.settings_mode);

}

void settings_screen_maxBrightness(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    setting_screen_drawDigits(val);

    setting_screen_indicator(2, app.settings_mode);
}

void settings_screen_nightEnd(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    word_layout_drawWord(WORD_DAY, CRGB::White);

    setting_screen_drawDigits(val);

    setting_screen_indicator(3, app.settings_mode);
}

void settings_screen_nightStart(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    word_layout_drawWord(WORD_NIGHT, CRGB::White);

    setting_screen_drawDigits(val);

    setting_screen_indicator(4, app.settings_mode);
}

void settings_screen_autoSleep(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    setting_screen_drawDigits(val);

    setting_screen_indicator(5, app.settings_mode);
}

void settings_screen_enableDemo(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    setting_screen_drawDigits(val);

    setting_screen_indicator(6, app.settings_mode);
}

void settings_screen_transitionEffect(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    setting_screen_drawDigits(val);

    setting_screen_indicator(7, app.settings_mode);
}

void settings_screen_colorMode(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    setting_screen_drawDigits(val);

    setting_screen_indicator(8, app.settings_mode);
}

void settings_screen_hours(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    setting_screen_drawDigits(val * 100);

    setting_screen_indicator(9, app.settings_mode);
}

void settings_screen_minutes(void) {
    Setting_t* s = fsm_get_current_setting();

    uint8_t val = (uint8_t)(*(s->value));

    setting_screen_drawDigits(val);

    setting_screen_indicator(10, app.settings_mode);
}