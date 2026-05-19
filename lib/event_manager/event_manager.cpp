/*

File:   event_manager.cpp
Author: Isaac Pawley
Date:   01-05-2026

*/

#include "event_manager.h"
#include <stdint.h>

#define EVENT_QUEUE_SIZE 16

typedef struct {
    inputEvent_t buffer[EVENT_QUEUE_SIZE];
    uint8_t head;
    uint8_t tail;
} eventQueue_t;

static eventQueue_t fsm_queue;
static eventQueue_t ui_queue;

static bool queue_push(eventQueue_t *queue, inputEvent_t event) {
    uint8_t next = (queue->head + 1) % EVENT_QUEUE_SIZE;

    // queue full
    if (next == queue->tail) {
        return false;
    }

    queue->buffer[queue->head] = event;
    queue->head = next;

    return true;
}

static bool queue_pop(eventQueue_t *queue, inputEvent_t *event) {
    if (queue->head == queue->tail) {
        return false;
    }

    *event = queue->buffer[queue->tail];
    queue->tail = (queue->tail + 1) % EVENT_QUEUE_SIZE;

    return true;
}

void event_manager_init(void) {
    fsm_queue.head = 0;
    fsm_queue.tail = 0;

    ui_queue.head = 0;
    ui_queue.tail = 0;
}

void event_manager_push(inputEvent_t event) {
    // push event to both queues
    queue_push(&fsm_queue, event);
    queue_push(&ui_queue, event);
}

bool event_manager_popFSM(inputEvent_t *event) {
    return queue_pop(&fsm_queue, event);
}

bool event_manager_popUI(inputEvent_t *event) {
    return queue_pop(&ui_queue, event);
}