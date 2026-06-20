/*

File:   transitions.cpp
Author: Isaac Pawley
Date:   19-06-2026

*/

#include <display.h>
#include "microGL.h"
#include "transitions.h"

void transition_fade(const TransitionContext& ctx) {
    for (int i = 0; i < NUM_MATRIX_LEDS; i++) {
        layer_mask.buffer[i] = ctx.t;
    }
}


void transition_dissolve(const TransitionContext& ctx) {
    for (int i = 0; i < NUM_MATRIX_LEDS; i++) {
        layer_mask.buffer[i] =
            (ctx.noise[i] < ctx.t) ? 255 : 0;
    }
}