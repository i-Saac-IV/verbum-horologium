/*

File:   daylight_sensor.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "daylight_sensor.h"

uint16_t raw_sensor_values[NUM_SENSORS];

void daylight_sensor_init(void) {
    for (uint8_t sensor = 0; sensor < NUM_SENSORS; sensor++) {
        raw_sensor_values[sensor] = 0;
    }
}

void daylight_sensor_readAllSensors(void) {
    raw_sensor_values[FRONT_SENSOR] = analogRead(FRONT_SENSOR_PIN);
    raw_sensor_values[DISPLAY_SENSOR] = analogRead(DISPLAY_SENSOR_PIN);
    raw_sensor_values[PCB_SENSOR] = analogRead(PCB_SENSOR_PIN);
}

uint16_t daylight_sensor_getBrightness(daylight_sensor_t sensor) {
    return raw_sensor_values[sensor];
}