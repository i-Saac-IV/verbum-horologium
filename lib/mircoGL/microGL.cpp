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
