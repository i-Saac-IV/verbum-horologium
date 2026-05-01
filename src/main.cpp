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

void setup() {
    task_scheduler_init();
    task_scheduler_initAllTasks();
    //task_scheduler_enableTask(SERIAL_PRINT);
    task_scheduler_enableTask(READ_DAYLIGHT_SENSORS);
    task_scheduler_enableTask(READ_BUTTONS);
    display_init();
}

uint8_t mode = 0;

void loop() {
    task_scheduler_executeEnabledTasks();
    display_fill(CRGB::Black);
    
    if (buttons_getEvent(BUTTON_LEFT) == BUTTON_EVENT_SHORT_PRESS) {
        mode--;
    } else if (buttons_getEvent(BUTTON_RIGHT) == BUTTON_EVENT_SHORT_PRESS) {
        mode++;
    }

    if (mode == 1) {
        staircase_clock_displayTime();
    } else if (mode == 2) {
        digital_clock_displayTime();
    } else {
        // do nothing.
    }

    display_show();
}