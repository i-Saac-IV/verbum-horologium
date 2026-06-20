/*

File:   transitions.h
Author: Isaac Pawley
Date:   19-06-2026

*/

#ifndef INC_TRANSITIONS_H_
#define INC_TRANSITIONS_H_

#include "stdint.h"

struct TransitionContext {
    uint8_t* noise;
    uint8_t t;
};

void transition_fade(const TransitionContext& ctx);
void transition_dissolve(const TransitionContext& ctx);

#endif /* INC_TRANSITIONS_H_ */