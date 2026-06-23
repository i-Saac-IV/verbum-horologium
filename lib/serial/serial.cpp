/*

File:   serial.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "serial.h"
#include <stdio.h>

void serial_printf(const char *format, ...);

#include "daylight_sensor.h"
#include "rtc.h"
#include "main_fsm.h"
#include "version.h"
#include "config.h"

void serial_taskPrint() {
    serial_printf("Code version: v%d.%d\n\n", FW_VERSION_MAJOR, FW_VERSION_MINOR);
    
    if (!DEBUG) {
        return;
    }
    
    AppState_t* app = app_get();
    DateTime* now = rtc_getTime();

    serial_printf("Time: %02u:%02u on %02u-%02u-%04u\n\n", now->hour(), now->minute(), now->day(), now->month(), now->year());
    
    serial_printf("Sensors:\n\tFront: %d\tDisplay: %d\tPCB: %d\n\n", daylight_sensor_getScaledBrightness(FRONT_SENSOR), daylight_sensor_getScaledBrightness(DISPLAY_SENSOR), daylight_sensor_getScaledBrightness(PCB_SENSOR));

    serial_printf("Config:\n\tTime format: %u\n\tMin brightness: %u\n\tMax brightness: %u\n\tNight end: %u\n\tDay end: %u\n\tAuto sleep: %u\n\tDemo mode: %u\n\tTransition effect: %u\n\tColour mode: %u\n\n", config.time_format, config.min_brightness, config.max_brightness, config.nightMode_end, config.nightMode_start, config.auto_sleep, config.enable_demo, config.transition_effect, config.color_mode);

    serial_printf("FSM:\n\tMode: %u\n\tSettings mode: %u\n\tClock screen: %u\n\tSettings screen: %u\n\tPalette: %u\n\n", app->mode, app->settings_mode, app->clock_screen, app->settings_screen, app->palette);
}

void serial_init(void) {
    Serial.begin(BAUD_RATE);
    delay(1000);
    serial_taskPrint();
}

void serial_printf(const char *format, ...) {
    char buffer[BUFFER_SIZE];

    va_list args;
    va_start(args, format);

    vsnprintf(buffer, sizeof(buffer), format, args);

    va_end(args);

    Serial.print(buffer);
}