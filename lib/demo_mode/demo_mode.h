/*

File:   demo_mode.h
Author: Isaac Pawley
Date:   22-06-2026

*/

#ifndef INC_DEMO_MODE_H_
#define INC_DEMO_MODE_H_

#include <stdint.h>

#define MIN_ACTION_PERIOD   5000
#define MAX_ACTION_PERIOD   10000

#define SHORT_PAUSE         5000
#define LONG_PAUSE          30000

void demo_mode_init(void);
void demo_mode_update(void);
void demo_mode_resetTimer(uint32_t t);

#endif /* INC_DEMO_MODE_H_ */