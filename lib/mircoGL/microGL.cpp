/*

File:   microGL.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "microGL.h"

typedef struct {
    uint8_t cursorX;
    uint8_t cursorY;
} display_t;

display_t display {
    .cursorX = 0,
    .cursorY = 0
};

void microGL_drawPixel(uint8_t x, uint8_t y, CRGB color) {
    display_setPixel(x, y, color);
}

void microGL_drawLine(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, CRGB color) {
    /* Draw line by Bresenhem's algorithm */
    int32_t deltaX = abs(x2 - x1);
    int32_t deltaY = abs(y2 - y1);
    int32_t signX = ((x1 < x2) ? 1 : -1);
    int32_t signY = ((y1 < y2) ? 1 : -1);
    int32_t error = deltaX - deltaY;
    int32_t error2;

    microGL_drawPixel(x2, y2, color);

    while((x1 != x2) || (y1 != y2)) {
        microGL_drawPixel(x1, y1, color);
        error2 = error * 2;
        if(error2 > -deltaY) {
            error -= deltaY;
            x1 += signX;
        }
        
        if(error2 < deltaX) {
            error += deltaX;
            y1 += signY;
        }
    }
}


void microGL_drawCircle(uint8_t par_x, uint8_t par_y, uint8_t par_r, CRGB color) {
    /* Draw circle by Bresenhem's algorithm */
    int32_t x = -par_r;
    int32_t y = 0;
    int32_t err = 2 - 2 * par_r;
    int32_t e2;

    if (par_x >= MAXTRIX_WIDTH || par_y >= MAXTRIX_HEIGHT) {
        return;
    }

    do {
        microGL_drawPixel(par_x - x, par_y + y, color);
        microGL_drawPixel(par_x + x, par_y + y, color);
        microGL_drawPixel(par_x + x, par_y - y, color);
        microGL_drawPixel(par_x - x, par_y - y, color);
        e2 = err;

        if (e2 <= y) {
            y++;
            err = err + (y * 2 + 1);
            if(-x == y && e2 <= x) {
                e2 = 0;
            }
        }

        if (e2 > x) {
            x++;
            err = err + (x * 2 + 1);
        }
    } while (x <= 0);
}

void microGL_drawFilledCircle(uint8_t par_x, uint8_t par_y, uint8_t par_r, CRGB color) {
    int32_t x = -par_r;
    int32_t y = 0;
    int32_t err = 2 - 2 * par_r;
    int32_t e2;

    if (par_x >= MAXTRIX_WIDTH || par_y >= MAXTRIX_HEIGHT) {
        return;
    }

    do {
        for (uint8_t _y = (par_y + y); _y >= (par_y - y); _y--) {
            for (uint8_t _x = (par_x - x); _x >= (par_x + x); _x--) {
                microGL_drawPixel(_x, _y, color);
            }
        }

        e2 = err;
        if (e2 <= y) {
            y++;
            err = err + (y * 2 + 1);
            if (-x == y && e2 <= x) {
                e2 = 0;
            }
        }

        if (e2 > x) {
            x++;
            err = err + (x * 2 + 1);
        }
    } while (x <= 0);
}

void microGL_drawRectangle(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, CRGB color) {
    microGL_drawLine(x1,y1,x2,y1,color);
    microGL_drawLine(x2,y1,x2,y2,color);
    microGL_drawLine(x2,y2,x1,y2,color);
    microGL_drawLine(x1,y2,x1,y1,color);
}

void microGL_fillRectangle(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, CRGB color) {
    uint8_t x_start = ((x1<=x2) ? x1 : x2);
    uint8_t x_end   = ((x1<=x2) ? x2 : x1);
    uint8_t y_start = ((y1<=y2) ? y1 : y2);
    uint8_t y_end   = ((y1<=y2) ? y2 : y1);

    for (uint8_t y= y_start; (y<= y_end)&&(y<MAXTRIX_HEIGHT); y++) {
        for (uint8_t x= x_start; (x<= x_end)&&(x<MAXTRIX_WIDTH); x++) {
            microGL_drawPixel(x, y, color);
        }
    }
}

char microGL_writeChar(char ch, Font_t Font, CRGB color) {
    uint32_t i, b, j;
    
    // Check if character is valid
    if (ch < 32 || ch > 126)
        return 0;
    
    // Check remaining space on current line
    if (MAXTRIX_WIDTH < (display.cursorX + Font.width) ||
        MAXTRIX_HEIGHT < (display.cursorY + Font.height))
    {
        // Not enough space on current line
        return 0;
    }
    
    // Use the font to write
    for(i = 0; i < Font.height; i++) {
        b = Font.data[(ch - 32) * Font.height + i];
        for(j = 0; j < Font.width; j++) {
            if((b << j) & 0x8000)  {
                microGL_drawPixel(display.cursorX + j, (display.cursorY + i), color);
            }
        }
    }
    
    // The current space is now taken
    display.cursorX += Font.char_width ? Font.char_width[ch - 32] : Font.width;
    
    // Return written char for validation
    return ch;
}

char microGL_writeString(char* str, Font_t Font, CRGB color) {
    while (*str) {
        if (microGL_writeChar(*str, Font, color) != *str) {
            // Char could not be written
            return *str;
        }
        str++;
    }
    
    // Everything ok
    return *str;
}

void microGL_setCursor(uint8_t x, uint8_t y) {
    display.cursorX = x;
    display.cursorY = y;
}