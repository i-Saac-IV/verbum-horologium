/*

File:   microGL.h
Author: Isaac Pawley
Date:   28-04-2026

*/

#ifndef INC_MICROGL_H_
#define INC_MICROGL_H_

#include "display.h"

void microGL_drawPixel(uint8_t x, uint8_t y, CRGB color);
void microGL_drawLine(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, CRGB color);
void microGL_drawCircle(uint8_t par_x, uint8_t par_y, uint8_t par_r, CRGB color);
void microGL_drawFilledCircle(uint8_t par_x, uint8_t par_y, uint8_t par_r, CRGB color);
void microGL_drawRectangle(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, CRGB color);
void microGL_fillRectangle(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, CRGB color);
void microGL_drawBitmap(uint8_t x, uint8_t y, const unsigned char* bitmap, uint8_t w, uint8_t h, CRGB color);
void microGL_draw4x6Digit(uint8_t x, uint8_t y, uint8_t digit, CRGB color);

#endif /* INC_MICROGL_H_ */