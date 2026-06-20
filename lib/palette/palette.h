/*

File:   palette.h
Author: Isaac Pawley
Date:   20-06-2026

*/

#ifndef INC_PALETTE_H_
#define INC_PALETTE_H_

#include <FastLED.h>

enum PaletteColorId {
    COLOR_A,
    COLOR_B,
    COLOR_C,
    COLOR_D,
    COLOR_E,
    COLOR_F,
    NUM_COLORS
};

struct Palette {
    CRGB colors[NUM_COLORS];
};

extern const uint8_t NUM_PALETTES;

CRGB palette_getColor(PaletteColorId color);

#endif /* INC_PALETTE_H_ */