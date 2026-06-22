/*

File:   word_clock.cpp
Author: Isaac Pawley
Date:   17-05-2026

*/

#include "word_clock.h"

#include "word_layout.h"

void word_clock_drawClock(uint8_t hour, uint8_t minute, const Palette& colors);
void word_clock_drawHours(uint8_t hour, const Palette& colors);

void word_clock_render(const DateTime& now, const Palette& colors) {
    word_clock_drawClock(now.hour(), now.minute(), colors);
}

void word_clock_drawClock(uint8_t hour, uint8_t minute, const Palette& colors) {
    minute = minute / 5;

    switch (minute) {
        case 0:
            word_layout_drawWord(WORD_O_CLOCK, colors.colors[COLOR_1]);
            break;

        case 1:
            word_layout_drawWord(WORD_FIVE_MINUTES_TO, colors.colors[COLOR_2]);
            word_layout_drawWord(WORD_PAST, colors.colors[COLOR_3]);
            break;

        case 2:
            word_layout_drawWord(WORD_TEN_MINUTES_TO, colors.colors[COLOR_2]);
            word_layout_drawWord(WORD_PAST, colors.colors[COLOR_3]);
            break;

        case 3:
            word_layout_drawWord(WORD_QUARTER, colors.colors[COLOR_2]);
            word_layout_drawWord(WORD_PAST, colors.colors[COLOR_3]);
            break;

        case 4:
            word_layout_drawWord(WORD_TWENTY_MINUTE, colors.colors[COLOR_1]);
            break;

        case 5:
            word_layout_drawWord(WORD_TWENTY_MINUTE, colors.colors[COLOR_2]);
            word_layout_drawWord(WORD_TY_FIVE_MINUTE, colors.colors[COLOR_3]);
            break;

        case 6:
            word_layout_drawWord(WORD_HALF, colors.colors[COLOR_2]);
            word_layout_drawWord(WORD_PAST, colors.colors[COLOR_3]);
            break;

        case 7:
            word_layout_drawWord(WORD_THIRTY_MINUTE, colors.colors[COLOR_2]);
            word_layout_drawWord(WORD_TY_FIVE_MINUTE, colors.colors[COLOR_3]);
            break;
            
        case 8:
            word_layout_drawWord(WORD_FORTY_MINUTE, colors.colors[COLOR_1]);
            break;

        case 9:
            word_layout_drawWord(WORD_QUARTER, colors.colors[COLOR_2]);
            word_layout_drawWord(WORD_TO, colors.colors[COLOR_3]);
            hour++;
            break;

        case 10:
            word_layout_drawWord(WORD_TEN_MINUTES_TO, colors.colors[COLOR_2]);
            word_layout_drawWord(WORD_TO, colors.colors[COLOR_3]);
            hour++;
            break;

        case 11:
            word_layout_drawWord(WORD_FIVE_MINUTES_TO, colors.colors[COLOR_2]);
            word_layout_drawWord(WORD_TO, colors.colors[COLOR_3]);
            hour++;
            break;

        default:
            break;
    }
    word_clock_drawHours(hour, colors);
}

void word_clock_drawHours(uint8_t hour, const Palette& colors) {
    hour = (hour % 12 == 0) ? 12 : hour % 12;
    // if (switch_hour > 11) switch_hour -= 12;

    switch (hour) {
        case 0:
            word_layout_drawWord(WORD_MIDNIGHT, colors.colors[COLOR_0]);
            break;

        case 1:
            word_layout_drawWord(WORD_ONE_HOUR, colors.colors[COLOR_0]);
            break;

        case 2:
            word_layout_drawWord(WORD_TWO_HOUR, colors.colors[COLOR_0]);
            break;

        case 3:
            word_layout_drawWord(WORD_THREE_HOUR, colors.colors[COLOR_0]);
            break;

        case 4:
            word_layout_drawWord(WORD_FOUR_HOUR, colors.colors[COLOR_0]);
            break;

        case 5:
            word_layout_drawWord(WORD_FIVE_HOUR, colors.colors[COLOR_0]);
            break;

        case 6:
            word_layout_drawWord(WORD_SIX_HOUR, colors.colors[COLOR_0]);
            break;

        case 7:
            word_layout_drawWord(WORD_SEVEN_HOUR, colors.colors[COLOR_0]);
            break;

        case 8:
            word_layout_drawWord(WORD_EIGHT_HOUR, colors.colors[COLOR_0]);
            break;

        case 9:
            word_layout_drawWord(WORD_NINE_HOUR, colors.colors[COLOR_0]);
            break;

        case 10:
            word_layout_drawWord(WORD_TEN_HOUR, colors.colors[COLOR_0]);
            break;

        case 11:
            word_layout_drawWord(WORD_ELEVEN_HOUR, colors.colors[COLOR_0]);
            break;

        case 12:
            word_layout_drawWord(WORD_TWELVE_HOUR, colors.colors[COLOR_0]);
            break;

        default:
            break;
    }
}