/*

File:   daylight_sensor.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "daylight_sensor.h"
#include "config.h"

#define ADC_BITS 1024

typedef struct {
    uint16_t raw;
    uint8_t scaled;
    uint8_t pin;
} sensor_t;

sensor_t sensors[NUM_SENSORS] = {
    [FRONT_SENSOR] = {
        .raw = 0,
        .scaled = 0,
        .pin = A0
    },

    [DISPLAY_SENSOR] = {
        .raw = 0,
        .scaled = 0,
        .pin = A1
    },

    [PCB_SENSOR] = {
        .raw = 0,
        .scaled = 0,
        .pin = A2
    }
};

uint8_t scale_to_matrixBrightness(sensor_t s);

void daylight_sensor_init(void) {
    daylight_sensor_readAllSensors();
}

void daylight_sensor_readAllSensors(void) {
    for (uint8_t s = 0; s < NUM_SENSORS; s++) {
        sensors[s].raw = analogRead(sensors[s].pin);
        sensors[s].scaled = scale_to_matrixBrightness(sensors[s]);
    }
}

uint16_t daylight_sensor_getRawBrightness(daylight_sensor_t s) {
    return sensors[s].raw;
}

uint8_t daylight_sensor_getScaledBrightness(daylight_sensor_t s) {
    return sensors[s].scaled;
}

uint8_t scale_to_matrixBrightness(sensor_t s) {
    if (s.raw <= 0) {
        return config.min_brightness;
    } else if (s.raw >= ADC_BITS) {
        return config.max_brightness;
    }
    return (uint8_t)(config.min_brightness + ((uint32_t)(s.raw * (config.max_brightness - config.min_brightness))) / ADC_BITS);
}