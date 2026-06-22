/*

File:   config.h
Author: Isaac Pawley
Date:   01-05-2026

*/

#ifndef INC_CONFIG_H_
#define INC_CONFIG_H_

#include <stdint.h>
#include <stdbool.h>

typedef enum {
    TIME_FORMAT_12H = 0,
    TIME_FORMAT_24H
} time_format_t;

typedef struct {
    uint8_t color_mode;
    uint8_t time_format; 
    uint8_t min_brightness;
    uint8_t max_brightness;
    uint8_t nightMode_end;
    uint8_t nightMode_start;
    uint8_t auto_sleep;
    uint8_t enable_demo;
    uint8_t transition_effect;
} config_t;

extern config_t config;

#endif /* INC_CONFIG_H_ */