/*

File:   digital_clock.h
Author: Isaac Pawley
Date:   29-04-2026

*/

#ifndef INC_DIGITAL_CLOCK_H_
#define INC_DIGITAL_CLOCK_H_

#include "RTClib.h"

void digital_clock_render(const DateTime& now, bool pickNewColours);

#endif /* INC_DIGITAL_CLOCK_H_ */