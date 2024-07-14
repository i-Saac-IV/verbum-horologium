/*

Creator: Isaac Pawley
Date: 28-06-2024
Repo: https://github.com/i-Saac-IV/verbum-horologium

*/

#include <Wire.h>
#include <RTClib.h>

#define DAYLIGHT A0
#define AMBIENT A1
#define CONTROL A2

#define ACTIVITY_PIN 10
#define LED_PIN 10

RTC_DS3231 rtc;

uint16_t year;
byte month;
byte day;
byte dOW;
byte hour;
byte minute;
byte second;

/* to do */
// write all the code...

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  rtc.begin();
  pinMode(ACTIVITY_PIN, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  getTime();
  updateSerialPort();

  if (Serial.available()) {
    char command = Serial.read();

    if (command == 'S' || command == 's') {
      setTime();
    } else {
      Serial.print("Unknown command: ");
      Serial.println(command);
    }
  }

  

  digitalWrite(ACTIVITY_PIN, LOW);
  delay(1000);
}

void updateSerialPort() {
  char buffer[40];
  sprintf(buffer, "Current time: %d-%d-%d\t%d:%d:%d", year, month, day, hour, minute, second);
  Serial.println(buffer);
}

void getTime() {
  //Reads the RTC module and updates global variables.
  DateTime now = rtc.now();

  year = now.year();
  month = now.month();
  day = now.day();
  hour = now.hour();
  minute = now.minute();
  second = now.second();
}

void setTime() {
  Serial.println("Enter date and time in the format: YYYY-MM-DD HH:MM:SS");

  while (!Serial.available());
  String dateTime = Serial.readStringUntil('\n');
  Serial.println("Received: " + dateTime);

  int year = dateTime.substring(0, 4).toInt();
  int month = dateTime.substring(5, 7).toInt();
  int day = dateTime.substring(8, 10).toInt();
  int hour = dateTime.substring(11, 13).toInt();
  int minute = dateTime.substring(14, 16).toInt();
  int second = dateTime.substring(17, 19).toInt();

  rtc.adjust(DateTime(year, month, day, hour, minute, second));
  Serial.println("Time set successfully!");
}

