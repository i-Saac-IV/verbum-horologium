/*

File:   rtc.cpp
Author: Isaac Pawley
Date:   28-04-2026

*/

#include "rtc.h"

RTC_DS3231 rtc;
DateTime now;

void rtc_init(void) {
    rtc.begin();
    rtc_read();
}

void rtc_read(void) {
    now = rtc.now();
}

void rtc_setTime(uint8_t hour, uint8_t minute) {
    rtc_read();
    rtc.adjust(DateTime(
        now.year(),
        now.month(),
        now.day(),
        hour % 24,
        minute % 60,
        0
    ));
}

void rtc_setDate(uint16_t year, uint8_t month, uint8_t day) {
    rtc_read();
    rtc.adjust(DateTime(
        year,
        month,
        day,
        now.hour(),
        now.minute(),
        now.second()
    ));
}

DateTime* rtc_getTime(void) {
    return &now;
}