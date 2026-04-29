/*

File:   microGL.h
Author: Isaac Pawley
Date:   28-04-2026

*/

#ifndef INC_MICROGL_H_
#define INC_MICROGL_H_

#include "display.h"

typedef struct {
	const uint8_t width;
	const uint8_t height;
	const uint16_t *const data;
    const uint8_t *const char_width;
} Font_t;

void microGL_drawPixel(uint8_t x, uint8_t y, CRGB color);
void microGL_drawLine(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, CRGB color);
void microGL_drawCircle(uint8_t par_x, uint8_t par_y, uint8_t par_r, CRGB color);
void microGL_drawFilledCircle(uint8_t par_x, uint8_t par_y, uint8_t par_r, CRGB color);
void microGL_drawRectangle(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, CRGB color);
void microGL_fillRectangle(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, CRGB color);
char microGL_writeChar(char ch, Font_t Font, CRGB color);
char microGL_writeString(char* str, Font_t Font, CRGB color);
void microGL_setCursor(uint8_t x, uint8_t y);

#endif /* INC_MICROGL_H_ */