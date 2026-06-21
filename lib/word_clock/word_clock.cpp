/*

File:   word_clock.cpp
Author: Isaac Pawley
Date:   17-05-2026

*/

#include "word_clock.h"
#include "word_layout.h"

static CRGB color_a;
static CRGB color_b;
static CRGB color_c;
static CRGB color_d;

void word_clock_drawClock(uint8_t hour, uint8_t minute);
void word_clock_drawHours(uint8_t hour);

void word_clock_render(const DateTime& now, Palette colors) {

    color_a = colors.colors[0];
    color_b = colors.colors[6];
    color_c = colors.colors[4];
    color_d = colors.colors[8];

    word_clock_drawClock(now.hour(), now.minute());
}

void word_clock_drawClock(uint8_t hour, uint8_t minute) {
    minute = minute / 5;

    switch (minute) {
        case 0:
            word_layout_drawWord(WORD_O_CLOCK, color_b);
            break;

        case 1:
            word_layout_drawWord(WORD_FIVE_MINUTES_TO, color_c);
            word_layout_drawWord(WORD_PAST, color_d);
            break;

        case 2:
            word_layout_drawWord(WORD_TEN_MINUTES_TO, color_c);
            word_layout_drawWord(WORD_PAST, color_d);
            break;

        case 3:
            word_layout_drawWord(WORD_QUARTER, color_c);
            word_layout_drawWord(WORD_PAST, color_d);
            break;

        case 4:
            word_layout_drawWord(WORD_TWENTY_MINUTE, color_b);
            break;

        case 5:
            word_layout_drawWord(WORD_TWENTY_MINUTE, color_c);
            word_layout_drawWord(WORD_TY_FIVE_MINUTE, color_d);
            break;

        case 6:
            word_layout_drawWord(WORD_HALF, color_c);
            word_layout_drawWord(WORD_PAST, color_d);
            break;

        case 7:
            word_layout_drawWord(WORD_THIRTY_MINUTE, color_c);
            word_layout_drawWord(WORD_TY_FIVE_MINUTE, color_d);
            break;
            
        case 8:
            word_layout_drawWord(WORD_FORTY_MINUTE, color_b);
            break;

        case 9:
            word_layout_drawWord(WORD_QUARTER, color_c);
            word_layout_drawWord(WORD_TO, color_d);
            hour++;
            break;

        case 10:
            word_layout_drawWord(WORD_TEN_MINUTES_TO, color_c);
            word_layout_drawWord(WORD_TO, color_d);
            hour++;
            break;

        case 11:
            word_layout_drawWord(WORD_FIVE_MINUTES_TO, color_c);
            word_layout_drawWord(WORD_TO, color_d);
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
            word_layout_drawWord(WORD_MIDNIGHT, color_a);
            break;

        case 1:
            word_layout_drawWord(WORD_ONE_HOUR, color_a);
            break;

        case 2:
            word_layout_drawWord(WORD_TWO_HOUR, color_a);
            break;

        case 3:
            word_layout_drawWord(WORD_THREE_HOUR, color_a);
            break;

        case 4:
            word_layout_drawWord(WORD_FOUR_HOUR, color_a);
            break;

        case 5:
            word_layout_drawWord(WORD_FIVE_HOUR, color_a);
            break;

        case 6:
            word_layout_drawWord(WORD_SIX_HOUR, color_a);
            break;

        case 7:
            word_layout_drawWord(WORD_SEVEN_HOUR, color_a);
            break;

        case 8:
            word_layout_drawWord(WORD_EIGHT_HOUR, color_a);
            break;

        case 9:
            word_layout_drawWord(WORD_NINE_HOUR, color_a);
            break;

        case 10:
            word_layout_drawWord(WORD_TEN_HOUR, color_a);
            break;

        case 11:
            word_layout_drawWord(WORD_ELEVEN_HOUR, color_a);
            break;

        case 12:
            word_layout_drawWord(WORD_TWELVE_HOUR, color_a);
            break;

        default:
            break;
    }
}