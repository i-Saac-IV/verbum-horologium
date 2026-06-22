/*

File:   task_scheduler.h
Author: Isaac Pawley
Date:   28-04-2026

*/

#ifndef INC_TASK_SCHEDULER_H_
#define INC_TASK_SCHEDULER_H_

#define TICK_FREQUENCY_HZ 1000

typedef enum Task_id {
    SERIAL_PRINT = 0,
    READ_DAYLIGHT_SENSORS,
    READ_RTC,
    READ_BUTTONS,
    UPDATE_RENDERER,
    UPDATE_FSM,
    UPDATE_DEMO_MODE,
    RUN_STARTUP,
    TASK_COUNT
} Task_id_t;

#define SERIAL_PRINT_FREQUENCY_HZ 1
#define READ_DAYLIGHT_SENSORS_FREQUENCY_HZ 0.2
#define READ_RTC_FREQUENCY_HZ 1
#define READ_BUTTONS_FREQUENCY_HZ 100
#define UPDATE_RENDERER_FREQUENCY_HZ 60
#define UPDATE_FSM_FREQUENCY_HZ 50
#define UPDATE_DEMO_MODE_FREQUENCY_HZ 1

void task_scheduler_enableTask(Task_id_t taskId);
void task_scheduler_disableTask(Task_id_t taskId);
void task_scheduler_toggleTask(Task_id_t taskId);
void task_scheduler_disableAll(void);
void task_scheduler_updateTaskNextRun(Task_id_t taskId);
void task_scheduler_updateTicks(void);
bool task_scheduler_runQuery(Task_id_t taskId);
void task_scheduler_executeTaskFunc(Task_id_t taskId);
void task_scheduler_executeTask(Task_id_t taskId);
void task_scheduler_init(void);
void task_scheduler_initAllTasks(void);
void task_scheduler_executeEnabledTasks(void);

#endif /* INC_TASK_SCHEDULER_H_ */