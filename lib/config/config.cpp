/*

File:   config.cpp
Author: Isaac Pawley
Date:   01-05-2026

*/

#include "config.h"

config_t config = {
    .color_palette = 0,
    .time_format = TIME_FORMAT_12H,
    .min_brightness = 0,
    .max_brightness = 50,
    .nightMode_end = 7,
    .nightMode_start = 19,
    .auto_sleep = 1,
    .enable_demo = 0
};