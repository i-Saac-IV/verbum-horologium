/*

File:   main.cpp
Author: Isaac Pawley
Date:   28-04-2026
Repo:   https://github.com/i-Saac-IV/verbum-horologium

*/

#include <Arduino.h>
#include <task_scheduler.h>

#include <display.h>
#include <microGL.h>
#include <bitmaps.h>
#include <word_layout.h>
#include <digital_clock.h>

void setup() {
    task_scheduler_init();
    task_scheduler_initAllTasks();
    task_scheduler_enableTask(SERIAL_PRINT);
    task_scheduler_enableTask(READ_DAYLIGHT_SENSORS);
    display_init();
}

void loop() {
    task_scheduler_executeEnabledTasks();
    display_fill(CRGB::Black);
    
    digital_clock_displayTime();

    display_show();
}