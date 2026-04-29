/*

File:   rtc.h
Author: Isaac Pawley
Date:   28-04-2026

*/

#ifndef INC_RTC_H_
#define INC_RTC_H_

#include <Arduino.h>

void rtc_init(void);
void rtc_read(void);
void rtc_setTime(uint8_t hour, uint8_t minute);
void rtc_setDate(uint16_t year, uint8_t month, uint8_t day);
uint8_t rtc_getHour(void);
uint8_t rtc_getMinute(void);

#endif /* INC_RTC_H_ */