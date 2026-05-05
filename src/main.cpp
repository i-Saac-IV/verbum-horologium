/*

File:   main.cpp
Author: Isaac Pawley
Date:   28-04-2026
Repo:   https://github.com/i-Saac-IV/verbum-horologium

*/

#include <Arduino.h>
#include "task_scheduler.h"

#include "display.h"
#include "microGL.h"
#include "bitmaps.h"
#include "word_layout.h"
#include "digital_clock.h"
#include "staircase_clock.h"
#include "buttons.h"
#include "config.h"

void setup() {
    task_scheduler_init();
    task_scheduler_initAllTasks();
    task_scheduler_enableTask(SERIAL_PRINT);
    task_scheduler_enableTask(READ_DAYLIGHT_SENSORS);
    task_scheduler_enableTask(READ_BUTTONS);
    display_init();
}

void loop() {
    task_scheduler_executeEnabledTasks();
    display_fill(CRGB::Black);
    
    if (buttons_getEvent(BUTTON_LEFT) == BUTTON_EVENT_SHORT_PRESS) {
        config.display_mode--;
    } else if (buttons_getEvent(BUTTON_RIGHT) == BUTTON_EVENT_SHORT_PRESS) {
        config.display_mode++;
    }

    if (config.display_mode == 0) {
        staircase_clock_displayTime();
    } else if (config.display_mode == 1) {
        digital_clock_displayTime();
    } else {
        // do nothing.
    }

    display_show();
}