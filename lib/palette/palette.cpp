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
        [COLOR_0]   = CRGB(0, 0, 0),
        [COLOR_1]   = CRGB(0, 0, 0),
        [COLOR_2]   = CRGB(0, 0, 0),
        [COLOR_3]   = CRGB(0, 0, 0),
        [COLOR_4]   = CRGB(0, 0, 0),
        [COLOR_5]   = CRGB(0, 0, 0),
        [COLOR_6]   = CRGB(0, 0, 0),
        [COLOR_7]   = CRGB(0, 0, 0),
        [COLOR_8]   = CRGB(0, 0, 0),
        [COLOR_9]   = CRGB(0, 0, 0),
        [COLOR_10]  = CRGB(0, 0, 0),
        [COLOR_11]  = CRGB(0, 0, 0)
    }
};
*/

const Palette palette_rainbow = {
    .colors = {
        [COLOR_0]   = CHSV(0, 255, 255),
        [COLOR_1]   = CHSV(21, 255, 255),
        [COLOR_2]   = CHSV(42, 255, 255),
        [COLOR_3]   = CHSV(63, 255, 255),
        [COLOR_4]   = CHSV(84, 255, 255),
        [COLOR_5]   = CHSV(105, 255, 255),
        [COLOR_6]   = CHSV(126, 255, 255),
        [COLOR_7]   = CHSV(147, 255, 255),
        [COLOR_8]   = CHSV(168, 255, 255),
        [COLOR_9]   = CHSV(189, 255, 255),
        [COLOR_10]  = CHSV(120, 255, 255),
        [COLOR_11]  = CHSV(231, 255, 255)
    }
};

const Palette palette_warm = {
    .colors = {
        [COLOR_0]   = CRGB(255, 0, 68),
        [COLOR_1]   = CRGB(255, 0, 34),
        [COLOR_2]   = CRGB(255, 0, 0),
        [COLOR_3]   = CRGB(255, 34, 0),
        [COLOR_4]   = CRGB(255, 68, 0),
        [COLOR_5]   = CRGB(255, 102, 0),
        [COLOR_6]   = CRGB(255, 136, 0),
        [COLOR_7]   = CRGB(255, 170, 0),
        [COLOR_8]   = CRGB(255, 204, 0),
        [COLOR_9]   = CRGB(255, 238, 0),
        [COLOR_10]  = CRGB(238, 255, 0),
        [COLOR_11]  = CRGB(204, 255, 0)
    }
};

const Palette palette_cool = {
    .colors = {
        [COLOR_0]   = CRGB(0, 255, 170),
        [COLOR_1]   = CRGB(0, 255, 204),
        [COLOR_2]   = CRGB(0, 255, 238),
        [COLOR_3]   = CRGB(0, 238, 255),
        [COLOR_4]   = CRGB(0, 204, 255),
        [COLOR_5]   = CRGB(0, 170, 255),
        [COLOR_6]   = CRGB(0, 136, 255),
        [COLOR_7]   = CRGB(0, 102, 255),
        [COLOR_8]   = CRGB(0, 68, 255),
        [COLOR_9]   = CRGB(0, 34, 255),
        [COLOR_10]  = CRGB(0, 0, 255),
        [COLOR_11]  = CRGB(34, 0, 255)
    }
};

const Palette palette_ocean = {
    .colors = {
        [COLOR_0]  = CRGB(0, 68, 93),
        [COLOR_1]  = CRGB(0, 95, 115),
        [COLOR_2]  = CRGB(10, 147, 150),
        [COLOR_3]  = CRGB(20, 184, 166),
        [COLOR_4]  = CRGB(72, 202, 228),
        [COLOR_5]  = CRGB(144, 224, 239),
        [COLOR_6]  = CRGB(202, 240, 248),
        [COLOR_7]  = CRGB(3, 4, 94),
        [COLOR_8]  = CRGB(2, 62, 138),
        [COLOR_9]  = CRGB(0, 119, 182),
        [COLOR_10] = CRGB(144, 190, 109),
        [COLOR_11] = CRGB(238, 245, 255)
    }
};

const Palette palette_synthwave = {
    .colors = {
        [COLOR_0]  = CRGB(255, 0, 110),
        [COLOR_1]  = CRGB(255, 77, 166),
        [COLOR_2]  = CRGB(199, 0, 255),
        [COLOR_3]  = CRGB(131, 56, 236),
        [COLOR_4]  = CRGB(58, 12, 163),
        [COLOR_5]  = CRGB(0, 180, 216),
        [COLOR_6]  = CRGB(72, 202, 228),
        [COLOR_7]  = CRGB(0, 245, 212),
        [COLOR_8]  = CRGB(255, 190, 11),
        [COLOR_9]  = CRGB(251, 133, 0),
        [COLOR_10] = CRGB(255, 255, 255),
        [COLOR_11] = CRGB(20, 20, 30)
    }
};

const Palette palette_office = {
    .colors = {
        [COLOR_0]  = CRGB(27, 67, 50),
        [COLOR_1]  = CRGB(45, 106, 79),
        [COLOR_2]  = CRGB(64, 145, 108),
        [COLOR_3]  = CRGB(82, 183, 136),
        [COLOR_4]  = CRGB(116, 198, 157),
        [COLOR_5]  = CRGB(149, 213, 178),
        [COLOR_6]  = CRGB(183, 228, 199),
        [COLOR_7]  = CRGB(212, 163, 115),
        [COLOR_8]  = CRGB(188, 108, 37),
        [COLOR_9]  = CRGB(96, 108, 56),
        [COLOR_10] = CRGB(254, 250, 224),
        [COLOR_11] = CRGB(40, 54, 24)
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
