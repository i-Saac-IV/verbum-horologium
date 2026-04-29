/*

File:   display.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "display.h"

CRGB led_matrix[NUM_MATRIX_LEDS];

void display_init(void) {
    FastLED.addLeds<LED_TYPE, LED_MAXTRIX_PIN, COLOR_ORDER>(led_matrix, NUM_MATRIX_LEDS).setCorrection(TypicalLEDStrip);
    display_setBrightnessPercent(0);
    display_fill(CRGB::Black);
    display_show();
}

void display_show(void) {
    FastLED.show();
}

void display_fill(CRGB color) {
    fill_solid(led_matrix, NUM_MATRIX_LEDS, color);
}

uint16_t display_pixelMap(uint8_t x, uint8_t y) {
    return x + (y * MAXTRIX_WIDTH);
}

void display_setPixel(uint8_t x, uint8_t y, CRGB color) {
    uint16_t pixelIndex = display_pixelMap(x, y);

    if (pixelIndex < NUM_MATRIX_LEDS) {
        led_matrix[pixelIndex] = color;
    }
}

void display_setBrightness(uint8_t brightness) {
    if (brightness > MAX_MAXTRIX_BRIGHTNESS) {
        FastLED.setBrightness(MAX_MAXTRIX_BRIGHTNESS);
    } else if (brightness < MIN_MAXTRIX_BRIGHTNESS) {
        FastLED.setBrightness(MIN_MAXTRIX_BRIGHTNESS);
    } else {
        FastLED.setBrightness(brightness);
    }
}

void display_setBrightnessPercent(uint8_t percent) {
    if (percent > 100) {
        percent = 100;
    }
    uint8_t brightness = MIN_MAXTRIX_BRIGHTNESS + ((uint32_t)percent * (MAX_MAXTRIX_BRIGHTNESS - MIN_MAXTRIX_BRIGHTNESS)) / 100;
    display_setBrightness(brightness);
}