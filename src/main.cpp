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
    task_scheduler_disableTask(RUN_STARTUP);
}

void loop() {
    task_scheduler_executeEnabledTasks();
}