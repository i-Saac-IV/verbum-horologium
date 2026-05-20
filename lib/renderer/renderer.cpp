/*

File:   renderer.cpp
Author: Isaac Pawley
Date:   19-05-2026

*/

#include "renderer.h"
#include "display.h"
#include "main_fsm.h"

#include "word_clock.h"
#include "staircase_clock.h"
#include "digital_clock.h"

void renderer_init(void) {
    display_init();
}

void renderer_update(void) {
    display_fill(CRGB::Black);
    inputEvent_t event;

    while (event_manager_popUI(&event)) {
        if (event.type == INPUT_EVENT_DOWN) {
            display_setPixel(1, 7, CRGB::White); // put real button reaction here...
        }
    }

    switch(g_app.screen) {
        case SCREEN_WORD:
            word_clock_displayTime();
            break;

        case SCREEN_STAIRCASE:
            staircase_clock_displayTime();
            break;

        case SCREEN_DIGITAL:
            digital_clock_displayTime();
            break;

        default:
            break;
    }
    display_show();
}

