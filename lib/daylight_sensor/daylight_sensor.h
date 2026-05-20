/*

File:   daylight_sensor.h
Author: Isaac Pawley
Date:   28-04-2026

*/

#ifndef INC_DAYLIGHT_SENSOR_H_
#define INC_DAYLIGHT_SENSOR_H_

#include <Arduino.h>

typedef enum {
    FRONT_SENSOR = 0,
    DISPLAY_SENSOR,
    PCB_SENSOR,
    NUM_SENSORS
} daylight_sensor_t;

void daylight_sensor_init(void);
void daylight_sensor_readAllSensors(void);
uint16_t daylight_sensor_getRawBrightness(daylight_sensor_t s);
uint8_t daylight_sensor_getScaledBrightness(daylight_sensor_t s);

#endif /* INC_DAYLIGHT_SENSOR_H_ */