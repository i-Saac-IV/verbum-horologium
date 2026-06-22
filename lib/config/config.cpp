/*

File:   config.cpp
Author: Isaac Pawley
Date:   01-05-2026

*/

#include "config.h"

config_t config = {
    .time_format = TIME_FORMAT_12H,
    .min_brightness = 5,
    .max_brightness = 50,
    .nightMode_end = 7,
    .nightMode_start = 19,
    .auto_sleep = 1,
    .enable_demo = 0,
    .transition_effect = 0,
    .color_mode = 1
};