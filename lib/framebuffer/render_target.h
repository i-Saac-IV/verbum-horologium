/*

File:   render_target.h
Author: Isaac Pawley
Date:   19-06-2026

*/

#ifndef INC_RENDER_TARGET_H_
#define INC_RENDER_TARGET_H_

#include <stdint.h>
#include "display.h"

template<typename T>
struct RenderTarget {
    T* buffer;
    uint8_t h;
    uint8_t w;
};

extern RenderTarget<CRGB> layer_bg;
extern RenderTarget<CRGB> layer_fg;
extern RenderTarget<uint8_t> layer_mask;

#endif /* INC_RENDER_TARGET_H_ */