/*

File:   serial.h
Author: Isaac Pawley
Date:   28-04-2026

*/

#ifndef INC_SERIAL_H_
#define INC_SERIAL_H_

#include <Arduino.h>
#include <stdarg.h>

#define DEBUG false

#define BAUD_RATE 115200
#define BUFFER_SIZE 256

void serial_init(void);
void serial_printf(const char *format, ...);
void serial_taskPrint();

#endif /* INC_SERIAL_H_ */