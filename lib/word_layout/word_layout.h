/*

File:   word_layout.h
Author: Isaac Pawley
Date:   29-04-2026

*/

#ifndef INC_WORD_LAYOUT_H_
#define INC_WORD_LAYOUT_H_

#include "microGL.h"

enum direction_t {
    HORIZONTAL = 0,
    VERTICAL
};

enum words {
    WORD_ONE_HOUR,
    WORD_TWO_HOUR,
    WORD_THREE_HOUR,
    WORD_FOUR_HOUR,
    WORD_FIVE_HOUR,
    WORD_SIX_HOUR,
    WORD_SEVEN_HOUR,
    WORD_EIGHT_HOUR,
    WORD_NINE_HOUR,
    WORD_TEN_HOUR,
    WORD_ELEVEN_HOUR,
    WORD_TWELVE_HOUR,
    WORD_FIVE_MINUTES_TO,
    WORD_TEN_MINUTES_TO,
    WORD_TWENTY_MINUTE,
    WORD_THIRTY_MINUTE,
    WORD_FORTY_MINUTE,
    WORD_TY_FIVE_MINUTE,
    WORD_QUARTER,
    WORD_HALF,
    WORD_PAST,
    WORD_TO,
    WORD_MIDDAY,
    WORD_MIDNIGHT,
    WORD_YES,
    WORD_NO,
    WORD_VERBUM,
    WORD_HOROLOGIUM,
    WORD_O_CLOCK,
    WORD_NICE,
    NUM_WORDS
};

typedef struct {
    uint8_t x;
    uint8_t y;
    uint8_t length;
    direction_t dir;
} wordData_t;

void word_layout_drawWord(words word, CRGB color);

#endif /* INC_WORD_LAYOUT_H_ */