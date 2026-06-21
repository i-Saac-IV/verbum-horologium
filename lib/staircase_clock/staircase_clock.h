/*

File:   staircase_clock.h
Author: Isaac Pawley
Date:   30-04-2026

*/

#ifndef INC_STAIRCASE_CLOCK_H_
#define INC_STAIRCASE_CLOCK_H_

#include "RTClib.h"
#include "palette.h"

void staircase_clock_render(const DateTime& now, Palette colors);

#endif /* INC_STAIRCASE_CLOCK_H_ */