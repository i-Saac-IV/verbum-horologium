/*

File:   main.cpp
Author: Isaac Pawley
Date:   28-04-2026
Repo:   https://github.com/i-Saac-IV/verbum-horologium

*/

#include <Arduino.h>
#include "task_scheduler.h"

void setup() {
    task_scheduler_init();
    task_scheduler_initAllTasks();
    task_scheduler_enableTask(SERIAL_PRINT);
    task_scheduler_enableTask(READ_DAYLIGHT_SENSORS);
    task_scheduler_enableTask(READ_BUTTONS);
    task_scheduler_enableTask(UPDATE_RENDERER);
    task_scheduler_enableTask(UPDATE_FSM);
}

void loop() {
    task_scheduler_executeEnabledTasks();
}