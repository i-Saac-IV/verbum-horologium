/*

File:   serial.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "serial.h"
#include <stdio.h>


void serial_printf(const char *format, ...);

#include "daylight_sensor.h"
#include "rtc.h"

void serial_taskPrint() {
    serial_printf("Front: %d\tDisplay: %d\tPCB: %d\n", daylight_sensor_getBrightness(FRONT_SENSOR), daylight_sensor_getBrightness(DISPLAY_SENSOR), daylight_sensor_getBrightness(PCB_SENSOR));
    serial_printf("Time: %02u:%02u\n", rtc_getHour(), rtc_getMinute());
}

void serial_init(void) {
    Serial.begin(BAUD_RATE);
}

void serial_printf(const char *format, ...) {
    char buffer[BUFFER_SIZE];

    va_list args;
    va_start(args, format);

    vsnprintf(buffer, sizeof(buffer), format, args);

    va_end(args);

    Serial.print(buffer);
}