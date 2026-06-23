/*

File:   microGL.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "microGL.h"

RenderTarget<CRGB>* currentRGBTarget = nullptr;
RenderTarget<uint8_t>* currentMaskTarget = nullptr;

void microGL_setTarget(RenderTarget<CRGB>& target) {
    currentRGBTarget = &target;
}

void microGL_setTarget(RenderTarget<uint8_t>& target) {
    currentMaskTarget = &target;
}

void microGL_drawPixel(uint8_t x, uint8_t y, CRGB color) {
    auto* t = currentRGBTarget;
    if (!t) return;

    uint16_t i = display_pixelMap(x, y);
    t->buffer[i] = color;
}

void microGL_drawPixel(uint8_t x, uint8_t y, uint8_t value) {
    auto* t = currentMaskTarget;
    if (!t) return;

    uint16_t i = display_pixelMap(x, y);
    t->buffer[i] = value;
}


void microGL_clearLayers(void) {
    fill_solid(layer_bg.buffer, NUM_MATRIX_LEDS, CRGB::Black);
    fill_solid(layer_fg.buffer, NUM_MATRIX_LEDS, CRGB::Black);
    memset(layer_mask.buffer, 0, NUM_MATRIX_LEDS);
}

void microGL_composeFrame(void) {
    for (int i = 0; i < NUM_MATRIX_LEDS; i++) {
        CRGB bgc = layer_bg.buffer[i];
        CRGB fgc = layer_fg.buffer[i];
        uint8_t m = layer_mask.buffer[i];

        CRGB out;
        out.r = (fgc.r * m + bgc.r * (255 - m)) >> 8;
        out.g = (fgc.g * m + bgc.g * (255 - m)) >> 8;
        out.b = (fgc.b * m + bgc.b * (255 - m)) >> 8;

        led_matrix[i] = out;
    }
}