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
    microGL_drawPixel(0, 0, CHSV(0, 255, 255));
    microGL_drawLine(0, 2, 10, 7, CHSV(50, 255, 255));
    microGL_drawRectangle(4, 3, 7, 9, CHSV(100, 255, 255));
    microGL_drawCircle(5, 5, 3, CHSV(150, 255, 255));
    microGL_drawBitmap(0, 0, circle_12x12, 12, 12, CHSV(200, 255, 255));
    display_show();
}