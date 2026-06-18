/*

File:   word_layout.cpp
Author: Isaac Pawley
Date:   29-04-2026

*/

#include "word_layout.h"

const wordData_t wordPosition[NUM_WORDS] = {
    {9, 8, 3, HORIZONTAL},      // WORD_ONE_HOUR
    {7, 8, 3, HORIZONTAL},      // WORD_TWO_HOUR
    {1, 4, 5, HORIZONTAL},      // WORD_THREE_HOUR
    {4, 5, 4, HORIZONTAL},      // WORD_FOUR_HOUR
    {0, 8, 4, HORIZONTAL},      // WORD_FIVE_HOUR
    {1, 5, 3, HORIZONTAL},      // WORD_SIX_HOUR
    {7, 6, 5, HORIZONTAL},      // WORD_SEVEN_HOUR
    {3, 8, 5, HORIZONTAL},      // WORD_EIGHT_HOUR
    {8, 5, 4, HORIZONTAL},      // WORD_NINE_HOUR
    {9, 3, 3, HORIZONTAL},      // WORD_TEN_HOUR
    {5, 4, 6, HORIZONTAL},      // WORD_ELEVEN_HOUR
    {1, 6, 6, HORIZONTAL},      // WORD_TWELVE_HOUR
    {7, 0, 4, HORIZONTAL},      // WORD_FIVE_MINUTES_TO
    {1, 0, 3, HORIZONTAL},      // WORD_TEN_MINUTES_TO
    {0, 10, 6, HORIZONTAL},     // WORD_TWENTY_MINUTE
    {6, 10, 6, HORIZONTAL},     // WORD_THIRTY_MINUTE
    {7, 9, 5, HORIZONTAL},      // WORD_FORTY_MINUTE
    {8, 11, 4, HORIZONTAL},     // WORD_TY_FIVE_MINUTE
    {0, 1, 7, HORIZONTAL},      // WORD_QUARTER
    {4, 0, 4, HORIZONTAL},      // WORD_HALF
    {8, 1, 4, HORIZONTAL},      // WORD_PAST
    {1, 3, 2, HORIZONTAL},      // WORD_TO
    {3, 3, 6, HORIZONTAL},      // WORD_MIDDAY
    {1, 2, 8, HORIZONTAL},      // WORD_MIDNIGHT
    {9, 2, 3, HORIZONTAL},      // WORD_YES
    {6, 11, 2, HORIZONTAL},     // WORD_NO
    {0, 2, 6, VERTICAL},        // WORD_VERBUM
    {2, 7, 10, HORIZONTAL},     // WORD_HOROLOGIUM
    {0, 9, 7, HORIZONTAL},      // WORD_O_CLOCK
    {1, 11, 4, HORIZONTAL},     // WORD_NICE
    {6, 3, 3, HORIZONTAL},      // WORD_DAY
    {4, 2, 5, HORIZONTAL}       // WORD_NIGHT

};

void word_layout_drawWord(words word, CRGB color) {
    uint8_t wordLength = wordPosition[word].length;

    for (uint8_t i = 0; i < wordLength; i++) {
        uint8_t x = wordPosition[word].x;
        uint8_t y = wordPosition[word].y;

        if (wordPosition[word].dir == HORIZONTAL) {
            x += i;
        } else {
            y += i;
        }
        microGL_drawPixel(x, y, color);
    }
}