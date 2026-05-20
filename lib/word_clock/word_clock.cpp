/*

File:   word_clock.cpp
Author: Isaac Pawley
Date:   17-05-2026

*/

#include "word_clock.h"

#include "word_layout.h"
#include "rtc.h"

void word_clock_displayTime(void) {
    DateTime now = rtc_getTime();
    word_clock_drawClock(now.hour(), now.minute());
}

void word_clock_drawClock(uint8_t hour, uint8_t minute) {
    minute = minute / 5;

    switch (minute) {
        case 0:
            word_layout_drawWord(WORD_O_CLOCK, CHSV(0, 255, 255));
            break;

        case 1:
            word_layout_drawWord(WORD_FIVE_MINUTES_TO, CHSV(0, 255, 255));
            word_layout_drawWord(WORD_PAST, CHSV(30, 255, 255));
            break;

        case 2:
            word_layout_drawWord(WORD_TEN_MINUTES_TO, CHSV(0, 255, 255));
            word_layout_drawWord(WORD_PAST, CHSV(30, 255, 255));
            break;

        case 3:
            word_layout_drawWord(WORD_QUARTER, CHSV(0, 255, 255));
            word_layout_drawWord(WORD_PAST, CHSV(30, 255, 255));
            break;

        case 4:
            word_layout_drawWord(WORD_TWENTY_MINUTE, CHSV(0, 255, 255));
            break;

        case 5:
            word_layout_drawWord(WORD_TWENTY_MINUTE, CHSV(0, 255, 255));
            word_layout_drawWord(WORD_TY_FIVE_MINUTE, CHSV(30, 255, 255));
            break;

        case 6:
            word_layout_drawWord(WORD_HALF, CHSV(0, 255, 255));
            word_layout_drawWord(WORD_PAST, CHSV(30, 255, 255));
            break;

        case 7:
            word_layout_drawWord(WORD_THIRTY_MINUTE, CHSV(0, 255, 255));
            word_layout_drawWord(WORD_TY_FIVE_MINUTE, CHSV(30, 255, 255));
            break;
            
        case 8:
            word_layout_drawWord(WORD_FORTY_MINUTE, CHSV(0, 255, 255));
            break;

        case 9:
            word_layout_drawWord(WORD_QUARTER, CHSV(0, 255, 255));
            word_layout_drawWord(WORD_TO, CHSV(30, 255, 255));
            hour++;
            break;

        case 10:
            word_layout_drawWord(WORD_TEN_MINUTES_TO, CHSV(0, 255, 255));
            word_layout_drawWord(WORD_TO, CHSV(30, 255, 255));
            hour++;
            break;

        case 11:
            word_layout_drawWord(WORD_FIVE_MINUTES_TO, CHSV(0, 255, 255));
            word_layout_drawWord(WORD_TO, CHSV(30, 255, 255));
            hour++;
            break;

        default:
            break;
    }
    word_clock_drawHours(hour);
}

void word_clock_drawHours(uint8_t hour) {
    hour = (hour % 12 == 0) ? 12 : hour % 12;
    // if (switch_hour > 11) switch_hour -= 12;

    switch (hour) {
        case 0:
            word_layout_drawWord(WORD_MIDNIGHT, CHSV(60, 255, 255));
            break;

        case 1:
            word_layout_drawWord(WORD_ONE_HOUR, CHSV(60, 255, 255));
            break;

        case 2:
            word_layout_drawWord(WORD_TWO_HOUR, CHSV(60, 255, 255));
            break;

        case 3:
            word_layout_drawWord(WORD_THREE_HOUR, CHSV(60, 255, 255));
            break;

        case 4:
            word_layout_drawWord(WORD_FOUR_HOUR, CHSV(60, 255, 255));
            break;

        case 5:
            word_layout_drawWord(WORD_FIVE_HOUR, CHSV(60, 255, 255));
            break;

        case 6:
            word_layout_drawWord(WORD_SIX_HOUR, CHSV(60, 255, 255));
            break;

        case 7:
            word_layout_drawWord(WORD_SEVEN_HOUR, CHSV(60, 255, 255));
            break;

        case 8:
            word_layout_drawWord(WORD_EIGHT_HOUR, CHSV(60, 255, 255));
            break;

        case 9:
            word_layout_drawWord(WORD_NINE_HOUR, CHSV(60, 255, 255));
            break;

        case 10:
            word_layout_drawWord(WORD_TEN_HOUR, CHSV(60, 255, 255));
            break;

        case 11:
            word_layout_drawWord(WORD_ELEVEN_HOUR, CHSV(60, 255, 255));
            break;

        case 12:
            word_layout_drawWord(WORD_TWELVE_HOUR, CHSV(60, 255, 255));
            break;

        default:
            break;
    }
}