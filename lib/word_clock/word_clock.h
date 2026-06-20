/*

File:   word_clock.h
Author: Isaac Pawley
Date:   17-05-2026

*/

#ifndef INC_WORD_CLOCK_H_
#define INC_BUTTONS_H_

#include <Arduino.h>
#include "RTClib.h"

void word_clock_render(const DateTime& now, bool pickNewColours);

#endif /* INC_WORD_CLOCK_H_ */
