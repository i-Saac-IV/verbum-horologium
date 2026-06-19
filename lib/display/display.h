/*

File:   display.h
Author: Isaac Pawley
Date:   28-04-2026

*/

#ifndef INC_DISPLAY_H_
#define INC_DISPLAY_H_

#include <FastLED.h>

#define LED_TYPE                WS2812B
#define LED_MAXTRIX_PIN         7
#define COLOR_ORDER             GRB
#define MAXTRIX_WIDTH           12
#define MAXTRIX_HEIGHT          12
#define NUM_MATRIX_LEDS         MAXTRIX_HEIGHT * MAXTRIX_WIDTH + 5

#define MAX_MAXTRIX_BRIGHTNESS  255
#define MIN_MAXTRIX_BRIGHTNESS  20

extern CRGB led_matrix[NUM_MATRIX_LEDS];

void display_init(void);
void display_show(void);
void display_fill(CRGB color);
void display_setPixel(uint8_t x, uint8_t y, CRGB color);
void display_updateBrightness(void);

#endif /* INC_DISPLAY_H_ */