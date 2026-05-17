/*

File:   word_clock.h
Author: Isaac Pawley
Date:   17-05-2026

*/

#ifndef INC_WORD_CLOCK_H_
#define INC_BUTTONS_H_

#include <Arduino.h>

void word_clock_displayTime(void);
void word_clock_drawClock(uint8_t hour, uint8_t minute);
void word_clock_drawHours(uint8_t hour);

#endif /* INC_WORD_CLOCK_H_ */
