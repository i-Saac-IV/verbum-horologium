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
    uint8_t display_mode;
    uint8_t color_palette;
    uint8_t nightMode_start;
    uint8_t nightMode_end;
    bool auto_sleep;
    time_format_t time_format; 
    bool enable_demo;
} config_t;

#endif /* INC_CONFIG_H_ */