/*

File:   startup_animation.cpp
Author: Isaac Pawley
Date:   23-06-2026

*/

#include "startup_animation.h"

#include "microGL.h"
#include "display.h"
#include "word_layout.h"
#include "transitions.h"

void startup_animation(void) {
    microGL_setTarget(layer_bg);

    uint8_t total_length = wordPosition[WORD_VERBUM].length + wordPosition[WORD_HOROLOGIUM].length;

    for (uint8_t i = 0; i < wordPosition[WORD_VERBUM].length; i++) {
        uint8_t x = wordPosition[WORD_VERBUM].x;
        uint8_t y = wordPosition[WORD_VERBUM].y;

        if (wordPosition[WORD_VERBUM].dir == HORIZONTAL) {
            x += i;
        } else {
            y += i;
        }

        microGL_drawPixel(x, y, CHSV((255 / total_length) * i, 255, 255));
        microGL_composeFrame();
        display_show();
        delay(LETTER_RATE);
    }

    for (uint8_t i = 0; i < wordPosition[WORD_HOROLOGIUM].length; i++) {
        uint8_t x = wordPosition[WORD_HOROLOGIUM].x;
        uint8_t y = wordPosition[WORD_HOROLOGIUM].y;

        if (wordPosition[WORD_HOROLOGIUM].dir == HORIZONTAL) {
            x += i;
        } else {
            y += i;
        }

        microGL_drawPixel(x, y, CHSV((255 / total_length) * (i + wordPosition[WORD_VERBUM].length), 255, 255));
        microGL_composeFrame();
        display_show();
        delay(LETTER_RATE);
    }

    uint8_t delta = 5;

    TransitionContext ctx;
    ctx.t = 0;
    ctx.noise = NULL;

    while (ctx.t < 255 || millis() > 10000) {

        transition_fade(ctx);

        if (ctx.t + delta < 255) {
            ctx.t += delta;
        } else {
            ctx.t = 255;
        }

        microGL_composeFrame();
        display_show();
        delay(1000 / 60);
    }
}