/*

File:   palette.cpp
Author: Isaac Pawley
Date:   20-06-2026

*/

#include "palette.h"

/*
const Palette palette_TEMPLATE = {
    .colors = {
        [COLOR_0]   = CRGB(0, 0, 0),
        [COLOR_1]   = CRGB(0, 0, 0),
        [COLOR_2]   = CRGB(0, 0, 0),
        [COLOR_3]   = CRGB(0, 0, 0)
    }
};
*/

const Palette palette_rainbow = {
    .colors = {
        [COLOR_0]   = CHSV(0, 255, 255),
        [COLOR_1]   = CHSV(64, 255, 255),
        [COLOR_2]   = CHSV(128, 255, 255),
        [COLOR_3]   = CHSV(192, 255, 255)
    }
};

const Palette palette_warm = {
    .colors = {
        [COLOR_0]   = CRGB(255, 0, 128),
        [COLOR_1]   = CRGB(255, 0, 0),
        [COLOR_2]   = CRGB(255, 128, 0),
        [COLOR_3]  = CRGB(255, 255, 0)
    }
};

const Palette palette_cool = {
    .colors = {
        [COLOR_0]   = CRGB(0, 255, 32),
        [COLOR_1]   = CRGB(0, 255, 255),
        [COLOR_2]   = CRGB(0, 64, 255),
        [COLOR_3]  = CRGB(64, 0, 255)
    }
};

const Palette palette_ocean = {
    .colors = {
        [COLOR_0]  = CRGB(72, 202, 228),
        [COLOR_1]  = CRGB(0, 119, 182),
        [COLOR_2]  = CRGB(247, 146, 86),
        [COLOR_3]  = CRGB(144, 190, 109)
    }
};

const Palette palette_synthwave = {
    .colors = {
        [COLOR_0]  = CRGB(255, 77, 166),
        [COLOR_1]  = CRGB(0, 180, 216),
        [COLOR_2]  = CRGB(255, 190, 11),
        [COLOR_3]  = CRGB(255, 255, 255)
    }
};

const Palette palette_office = {
    .colors = {
        [COLOR_0]  = CRGB(183, 228, 199),
        [COLOR_1]  = CRGB(254, 250, 224),
        [COLOR_2]  = CRGB(212, 163, 115),
        [COLOR_3]  = CRGB(90, 125, 124)
    }
};

const Palette* palettes[] = {
    &palette_rainbow,
    &palette_warm,
    &palette_cool,
    &palette_ocean,
    &palette_synthwave,
    &palette_office
};

constexpr uint8_t NUM_PALETTES = sizeof(palettes) / sizeof(palettes[0]);
