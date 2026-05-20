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
    serial_printf("Front: %d\tDisplay: %d\tPCB: %d\n", daylight_sensor_getRawBrightness(FRONT_SENSOR), daylight_sensor_getRawBrightness(DISPLAY_SENSOR), daylight_sensor_getRawBrightness(PCB_SENSOR));
    serial_printf("Front: %d\tDisplay: %d\tPCB: %d\n", daylight_sensor_getScaledBrightness(FRONT_SENSOR), daylight_sensor_getScaledBrightness(DISPLAY_SENSOR), daylight_sensor_getScaledBrightness(PCB_SENSOR));
    DateTime now = rtc_getTime();
    serial_printf("Time: %02u:%02u\n", now.hour(), now.minute());
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