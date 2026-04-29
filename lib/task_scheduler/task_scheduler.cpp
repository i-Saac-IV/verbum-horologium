/*

File:   task_scheduler.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "task_scheduler.h"
#include <stdint.h>

#define HZ_TO_TICKS(FREQUENCY_HZ) (TICK_FREQUENCY_HZ/FREQUENCY_HZ)

typedef struct Task {
    void (*taskFunction)(void);
    void (*taskInitFunction)(void);
    float frequency;
    uint32_t nextRun;
    bool enabled;
    bool persistent;
} Task_t;

/* includes for task functions */
#include "serial.h"
#include "daylight_sensor.h"
#include "rtc.h"

// check how to actually reference the functions!
static Task_t tasks[TASK_COUNT] = {

    [SERIAL_PRINT] = {
        .taskFunction = serial_taskPrint,
        .taskInitFunction = serial_init,
        .frequency = SERIAL_PRINT_FREQUENCY_HZ,
        .enabled = true,
        .persistent = true
    },

    [READ_DAYLIGHT_SENSORS] = {
        .taskFunction = daylight_sensor_readAllSensors,
        .taskInitFunction = daylight_sensor_init,
        .frequency = READ_DAYLIGHT_SENSORS_FREQUENCY_HZ,
        .enabled = true,
        .persistent = true
    },

    [READ_RTC] = {
        .taskFunction = rtc_read,
        .taskInitFunction = rtc_init,
        .frequency = READ_RTC_FREQUENCY_HZ,
        .enabled = true,
        .persistent = true
    }
};

/* end of task struct definitions */

static uint32_t ticks = 0;

void task_scheduler_enableTask(Task_id_t taskId) {
    tasks[taskId].enabled = true;
}

void task_scheduler_disableTask(Task_id_t taskId) {
    tasks[taskId].enabled = false;
}

void  task_scheduler_toggleTask(Task_id_t taskId) {
    tasks[taskId].enabled = !tasks[taskId].enabled;
}

void task_scheduler_disableAll(void) {
    for (uint8_t i = 0; i < TASK_COUNT; i++) {
        if (!tasks[i].persistent) {
            tasks[i].enabled = false;
        }  
    }
}

void task_scheduler_updateTaskNextRun(Task_id_t taskId) {
    tasks[taskId].nextRun += HZ_TO_TICKS(tasks[taskId].frequency);
}

void task_scheduler_updateTicks(void) {
    ticks = millis();
}

bool task_scheduler_runQuery(Task_id_t taskId) {
    return (int32_t)(ticks - tasks[taskId].nextRun) >= 0;
}

void task_scheduler_executeTaskFunc(Task_id_t taskId) {
    tasks[taskId].taskFunction();
}

void task_scheduler_executeTask(Task_id_t taskId) {
    task_scheduler_updateTicks();
    if (task_scheduler_runQuery(taskId)) {
        task_scheduler_executeTaskFunc(taskId);
        task_scheduler_updateTaskNextRun(taskId);
    }
}

void task_scheduler_init(void) {
    task_scheduler_disableAll();
    for (uint8_t i = 0; i < TASK_COUNT; i++) {
        tasks[i].nextRun = millis() + HZ_TO_TICKS(tasks[i].frequency);
    }
}

void task_scheduler_initAllTasks(void) {
    for (uint8_t i = 0; i < TASK_COUNT; i++) {
        tasks[i].taskInitFunction();
    }
}

void task_scheduler_executeEnabledTasks(void) {
    for (uint8_t i = 0; i < TASK_COUNT; i++) {
        if (tasks[i].enabled) {
            task_scheduler_executeTask((Task_id_t)i);
        }
    }
}