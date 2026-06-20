/*

File:   render_target.cpp
Author: Isaac Pawley
Date:   19-06-2026

*/

#include "render_target.h"

static CRGB bg_buffer[NUM_MATRIX_LEDS];
static CRGB fg_buffer[NUM_MATRIX_LEDS];
static uint8_t mask_buffer[NUM_MATRIX_LEDS];

RenderTarget<CRGB> layer_bg = {
    bg_buffer
};

RenderTarget<CRGB> layer_fg = {
    fg_buffer
};

RenderTarget<uint8_t> layer_mask = {
    mask_buffer
};