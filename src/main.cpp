/*

File:   main.cpp
Author: Isaac Pawley
Date:   28-04-2026
Repo:   https://github.com/i-Saac-IV/verbum-horologium

*/

#include <Arduino.h>
#include "task_scheduler.h"
#include "startup_animation.h"

void setup() {
    task_scheduler_init();
    task_scheduler_initAllTasks();

    startup_animation();
}

void loop() {
    task_scheduler_executeEnabledTasks();
    task_scheduler_enableTask(TRIGGER_HEARTBEAT);
}