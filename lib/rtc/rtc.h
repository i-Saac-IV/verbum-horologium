/*

File:   rtc.h
Author: Isaac Pawley
Date:   28-04-2026

*/

#ifndef INC_RTC_H_
#define INC_RTC_H_

#include <Arduino.h>
#include <RTClib.h>

void rtc_init(void);
void rtc_read(void);
void rtc_setTime(uint8_t hour, uint8_t minute);
void rtc_setDate(uint16_t year, uint8_t month, uint8_t day);
DateTime* rtc_getTime(void);

#endif /* INC_RTC_H_ */