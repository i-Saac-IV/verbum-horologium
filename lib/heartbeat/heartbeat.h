/*

File:   heartbeat.h
Author: Isaac Pawley
Date:   23-06-2026

*/

#ifndef INC_HEARTBEAT_H_
#define INC_HEARTBEAT_H_

#include <stdint.h>

#define HEARTBEAT_PERIOD 1000

void heartbeat_trigger(void);
void heartbeat_update(uint8_t x, uint8_t y);

#endif /* INC_HEARTBEAT_H_ */