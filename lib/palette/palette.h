/*

File:   palette.h
Author: Isaac Pawley
Date:   20-06-2026

*/

#ifndef INC_PALETTE_H_
#define INC_PALETTE_H_

#include <FastLED.h>

enum PaletteColorId {
    COLOR_0,
    COLOR_1,
    COLOR_2,
    COLOR_3,
    COLOR_4,
    COLOR_5,
    COLOR_6,
    COLOR_7,
    COLOR_8,
    COLOR_9,
    COLOR_10,
    COLOR_11,
    NUM_COLORS
};

struct Palette {
    CRGB colors[NUM_COLORS];
};

extern const uint8_t NUM_PALETTES;

extern const Palette* palettes[];

#endif /* INC_PALETTE_H_ */