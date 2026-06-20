/*

File:   palette.cpp
Author: Isaac Pawley
Date:   20-06-2026

*/

#include "palette.h"
#include "main_fsm.h"

/*
const Palette palette_TEMPLATE = {
    .colors = {
        [COLOR_A] = CRGB(0, 0, 0),
        [COLOR_B] = CRGB(0, 0, 0),
        [COLOR_C] = CRGB(0, 0, 0),
        [COLOR_D] = CRGB(0, 0, 0),
        [COLOR_E] = CRGB(0, 0, 0),
        [COLOR_F] = CRGB(0, 0, 0)
    }
};
*/

const Palette palette_rainbow = {
    .colors = {
        [COLOR_A] = CHSV(0, 255, 255),
        [COLOR_B] = CHSV(42, 255, 255),
        [COLOR_C] = CHSV(84, 255, 255),
        [COLOR_D] = CHSV(126, 255, 255),
        [COLOR_E] = CHSV(168, 255, 255),
        [COLOR_F] = CHSV(210, 255, 255)
    }
};

const Palette palette_warm = {
    .colors = {
        [COLOR_A] = CRGB(255, 0, 128),
        [COLOR_B] = CRGB(255, 0, 64),
        [COLOR_C] = CRGB(255, 0, 0),
        [COLOR_D] = CRGB(255, 64, 0),
        [COLOR_E] = CRGB(255, 128, 0),
        [COLOR_F] = CRGB(255, 191, 0)
    }
};

const Palette* palettes[] = {
    &palette_rainbow,
    &palette_warm
};

constexpr uint8_t NUM_PALETTES = sizeof(palettes) / sizeof(palettes[0]);

CRGB palette_getColor(PaletteColorId color) {
    if (color >= NUM_COLORS) {
        return CRGB(255,255,255);
    } else {
        AppState_t* app = app_get();
        return palettes[app->palette % NUM_PALETTES]->colors[color];
    }
}