/*

File:   daylight_sensor.h
Author: Isaac Pawley
Date:   28-04-2026

*/

#ifndef INC_DAYLIGHT_SENSOR_H_
#define INC_DAYLIGHT_SENSOR_H_

#include <Arduino.h>

#define FRONT_SENSOR_PIN    A0
#define DISPLAY_SENSOR_PIN  A1
#define PCB_SENSOR_PIN      A2

typedef enum {
    FRONT_SENSOR = 0,
    DISPLAY_SENSOR,
    PCB_SENSOR,
    NUM_SENSORS
} daylight_sensor_t;

void daylight_sensor_init(void);
void daylight_sensor_readAllSensors(void);
uint16_t daylight_sensor_getBrightness(daylight_sensor_t sensor);

#endif /* INC_DAYLIGHT_SENSOR_H_ */