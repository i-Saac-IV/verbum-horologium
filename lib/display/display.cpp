/*

File:   display.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "display.h"
#include "daylight_sensor.h"

CRGB led_matrix[NUM_MATRIX_LEDS];

uint8_t brightness;

void display_init(void) {
    FastLED.addLeds<LED_TYPE, LED_MAXTRIX_PIN, COLOR_ORDER>(led_matrix, NUM_MATRIX_LEDS).setCorrection(TypicalLEDStrip);
    brightness = daylight_sensor_getScaledBrightness(FRONT_SENSOR);
    display_updateBrightness();
    display_fill(CRGB::Black);
    display_show();
}

void display_show(void) {
    display_updateBrightness();
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

void display_updateBrightness(void) {
    uint8_t target_brightness = daylight_sensor_getScaledBrightness(FRONT_SENSOR);
    if (brightness < target_brightness) {
        brightness++;
    } else if (brightness > target_brightness) {
        brightness--;
    }
    FastLED.setBrightness(brightness);
}