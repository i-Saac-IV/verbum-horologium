/*

Creator: Isaac Pawley
Date: 28-06-2024
Repo: https://github.com/i-Saac-IV/verbum-horologium

Probs some good stuff to know...
FastLED version 3.7.0
Wire version 2.1.4
Raspberry Pi Pico/RP2040 3.7.2

*/

/* to do */
// setup the LRDs - done!
// get the colck's alt display mode going - done!! I;m on a rol today!
// fix the colour pallette stuff - meh, sorta working
// add captouch buttons...

#include <FastLED.h>
#include <Wire.h>
#include <RTClib.h>

#define DAYLIGHT A0
#define AMBIENT A1
#define CONTROL A2
#define ACTIVITY_PIN 10
#define LED_MAXTRIX_PIN 7
#define FPS 60

#define LED_TYPE WS2812B
#define COLOR_ORDER GRB

#define MAX_MAXTRIX_BRIGHTNESS 255  //100

const CRGB MIDNIGHT_COLOR = CRGB(0x8000ff);
const CRGB MIDDAY_COLOR = CRGB(0xffa600);
const CRGB WEED_COLOR = CRGB(0x009e10);

#define NUM_MATRIX_LEDS 12 * 12 + 5
CRGB led_matrix[NUM_MATRIX_LEDS];

RTC_DS3231 rtc;

unsigned int last_rtc_pole_time;
unsigned int last_loop_time;
#define RTC_POLLING_PERIOD 10

bool explicit_mode_en = false;
uint8_t mode = 0;
uint8_t colorPaletteMode;

bool state = 0;

uint32_t counter;

uint8_t word_map[][2] = {
  { 1, 3 },  //TEN            0
  { 4, 4 },  //HALF           1
  { 7, 4 },  //FIVE           2

  { 12, 7 },  //QUARTER       3
  { 20, 4 },  //PAST          4

  { 25, 8 },  //MIDNIGHT      5
  { 33, 3 },  //YES           6

  { 37, 2 },  //TO            7
  { 39, 6 },  //MIDDAY        8
  { 45, 3 },  //TEN           9

  { 49, 5 },  //THREE         10
  { 53, 6 },  //ELEVEN        11

  { 61, 3 },  //SIX           12
  { 64, 4 },  //FOUR          13
  { 68, 4 },  //NINE          14

  { 73, 6 },  //TWELVE        15
  { 79, 5 },  //SEVEN         16

  { 86, 10 },  //HOROLOGIUM   17

  { 96, 4 },   //FIVE         18
  { 99, 5 },   //EIGHT        19
  { 103, 3 },  //TWO          20
  { 105, 3 },  //ONE          21

  { 108, 7 },  //O'CLOCK      22
  { 115, 5 },  //FORTY        23

  { 120, 6 },  //TWENTY       24
  { 126, 6 },  //THIRTY       25

  { 133, 5 },  //NICE.        26
  { 138, 2 },  //NO           27
  { 140, 4 }   //FIVE         28
};

bool digit_map[10][6][6] = {
  { //0
    { 0, 0, 1, 1, 0, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 0, 1, 1, 0, 0 } },
  { //1
    { 0, 0, 1, 1, 0, 0 },
    { 0, 1, 0, 1, 0, 0 },
    { 0, 0, 0, 1, 0, 0 },
    { 0, 0, 0, 1, 0, 0 },
    { 0, 0, 0, 1, 0, 0 },
    { 0, 1, 1, 1, 1, 0 } },
  { //2
    { 0, 0, 1, 1, 0, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 0, 0, 0, 1, 0 },
    { 0, 0, 0, 1, 0, 0 },
    { 0, 0, 1, 0, 0, 0 },
    { 0, 1, 1, 1, 1, 0 } },
  { //3
    { 0, 0, 1, 1, 0, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 0, 0, 1, 0, 0 },
    { 0, 0, 0, 0, 1, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 0, 1, 1, 0, 0 } },
  { //4
    { 0, 0, 0, 1, 0, 0 },
    { 0, 0, 1, 0, 0, 0 },
    { 0, 1, 0, 0, 0, 0 },
    { 0, 1, 0, 1, 0, 0 },
    { 0, 1, 1, 1, 1, 0 },
    { 0, 0, 0, 1, 0, 0 } },
  { //5
    { 0, 0, 1, 1, 1, 0 },
    { 0, 1, 0, 0, 0, 0 },
    { 0, 0, 1, 1, 0, 0 },
    { 0, 0, 0, 0, 1, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 0, 1, 1, 0, 0 } },
  { //6
    { 0, 0, 1, 1, 0, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 1, 0, 0, 0, 0 },
    { 0, 1, 1, 1, 0, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 0, 1, 1, 0, 0 } },
  { //7
    { 0, 1, 1, 1, 1, 0 },
    { 0, 0, 0, 0, 1, 0 },
    { 0, 0, 0, 1, 0, 0 },
    { 0, 0, 1, 0, 0, 0 },
    { 0, 1, 0, 0, 0, 0 },
    { 0, 1, 0, 0, 0, 0 } },
  { //8
    { 0, 0, 1, 1, 0, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 0, 1, 1, 0, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 0, 1, 1, 0, 0 } },
  { //9
    { 0, 0, 1, 1, 0, 0 },
    { 0, 1, 0, 0, 1, 0 },
    { 0, 0, 1, 1, 1, 0 },
    { 0, 0, 0, 0, 1, 0 },
    { 0, 0, 0, 0, 1, 0 },
    { 0, 0, 0, 0, 1, 0 } }
};

byte minute_case;
byte old_minute;
uint8_t switch_hour;
uint16_t year;
byte month;
byte day;
byte dOW;
byte hour;
byte minute;
byte second;

int raw_daylight_val;
int raw_ambient_val;
int raw_control_val;

float hue;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  rtc.begin();
  getTime();
  randomSeed(DAYLIGHT);
  FastLED.addLeds<LED_TYPE, LED_MAXTRIX_PIN, COLOR_ORDER>(led_matrix, NUM_MATRIX_LEDS).setCorrection(TypicalLEDStrip);
  raw_daylight_val = analogRead(DAYLIGHT);
  FastLED.setBrightness(map(raw_daylight_val, 0, 1024, 0, MAX_MAXTRIX_BRIGHTNESS));
  readLDRs();
  pinMode(ACTIVITY_PIN, OUTPUT);

  /*
  //led matrix sanitiy check
  fill_solid(led_matrix, NUM_MATRIX_LEDS, CRGB::Red);
  FastLED.show();
  delay(333);
  fill_solid(led_matrix, NUM_MATRIX_LEDS, CRGB::Green);
  FastLED.show();
  delay(333);
  fill_solid(led_matrix, NUM_MATRIX_LEDS, CRGB::Blue);
  FastLED.show();
  delay(333);
  FastLED.clear();
  FastLED.show();
*/

  uint8_t startup_delay = 40;
  uint16_t last_letter;
  uint8_t letter_index = 1;

  counter = 0;

  while (counter < 3) {
    fadeToBlackBy(led_matrix, NUM_MATRIX_LEDS, 10);

    if (millis() > last_letter + startup_delay) {
      last_letter = millis();
      letter_index++;
    }

    if (letter_index < 7) {
      led_matrix[12 * (letter_index + 1)] = CHSV(map(letter_index, 0, 17, 0, 255), 255, 255);
    } else if (letter_index < 17) {
      led_matrix[86 + letter_index - 7] = CHSV(map(letter_index, 0, 17, 0, 255), 255, 255);
    } else if (letter_index > 37) {
      if (millis() > last_loop_time + 1000) {  //runs "every second" ish
        last_loop_time = millis();
        counter++;
        led_matrix[85] = CRGB::White;
      }
    }
    FastLED.show();
    delay(1000 / FPS);
  }

  while (led_matrix[85].getLuma() != 0 && millis() < 10000) {
    fadeToBlackBy(led_matrix, NUM_MATRIX_LEDS, 10);
    FastLED.show();
    delay(1000 / FPS);
  }
  delay(100);
}

void loop() {
  // put your main code here, to run repeatedly:
  counter++;
  if (counter % 100 == 0) {
    readLDRs();
  }

  if (millis() > last_rtc_pole_time + (1000 * RTC_POLLING_PERIOD)) {
    last_rtc_pole_time = millis();
    getTime();
    updateSerialPort();
  }

  if (millis() > last_loop_time + 1000) {  //runs "every second" ish
    last_loop_time = millis();
    if (second < 60) {
      second++;
    }
    state = !state;
  }

  if (Serial.available()) {
    char command = Serial.read();
    Serial.println();
    if (command == 'S' || command == 's') {  //type 's' into serial monitor to set the time.
      setTime();                             //2024-01-01 00:00:00
      getTime();
    } else if (command == 'E' || command == 'e') {  //type 'e' into serial monitor to enable explicit mode.
      explicit_mode_en = !explicit_mode_en;
      Serial.print("Explicit mode: ");
      Serial.println(explicit_mode_en);
    } else if (command == 'M' || command == 'm') {  //type 'm' into serial monitor to cycle display mode.
      mode++;
      Serial.print("Mode: ");
      Serial.println(mode);
    } else if (command == 'C' || command == 'c') {  //type 'c' into serial monitor to cycle color pallette.
      colorPaletteMode++;
      old_minute = 61;
      Serial.print("Color Pallette: ");
      Serial.println(colorPaletteMode);
    } else {
      Serial.print("Unknown command: ");
      Serial.println(command);
    }
    Serial.println();
  }

  int breath_led_index;

  switch (mode) {
    case 0:
      displayWordTime();
      breath_led_index = 85;
      break;
    case 1:
      displayDigitalTime(0);
      breath_led_index = 146;
      break;
    case 2:
      displayDigitalTime(1);
      breath_led_index = 146;
      break;
    default:
      mode = 0;
  }

  if (state == 1) {
    state = 0;
    led_matrix[breath_led_index] = CRGB::White;
  }

  digitalWrite(ACTIVITY_PIN, state);
  FastLED.show();
  delay(1000 / FPS);
}

void displayDigitalTime(bool _12h_enable) {
  fadeToBlackBy(&led_matrix[0], NUM_MATRIX_LEDS - 5, 50);
  fadeToBlackBy(&led_matrix[144], 5, 10);

  if (minute != old_minute) {
    old_minute = minute;
    hue = random(0, 255);
  }

  if ((hour > 12) && (_12h_enable == true)) {
    loadDigit(1, int((hour - 12) / 10));
    loadDigit(2, (hour - 12) % 10);
  } else {
    loadDigit(1, int(hour / 10));
    loadDigit(2, hour % 10);
  }
  loadDigit(3, int(minute / 10));
  loadDigit(4, minute % 10);
}

void loadDigit(uint8_t place, uint8_t digit) {
  int x_shift;
  int y_shift;
  CRGB DIGIT_COLOR;

  switch (place) {
    case 1:  // top left
      x_shift = 0;
      y_shift = 0;
      DIGIT_COLOR = CHSV(hue, 255, 255);
      break;
    case 2:  // top right
      x_shift = 6;
      y_shift = 0;
      DIGIT_COLOR = CHSV(hue, 255, 255);
      break;
    case 3:  // bottom left
      x_shift = 0;
      y_shift = 6;
      DIGIT_COLOR = CHSV(hue + (255 / 2), 255, 255);
      break;
    case 4:  // bottom right
      x_shift = 6;
      y_shift = 6;
      DIGIT_COLOR = CHSV(hue + (255 / 2), 255, 255);
      break;
    default:
      char buffer[40];
      sprintf(buffer, "Unable to load digit in place: %d", place);
      led_matrix[85] = CRGB::Red;
      Serial.println(buffer);
      return;
  }
  for (int row = 0; row < 6; row++) {
    for (int column = 0; column < 6; column++) {
      if (digit_map[digit][row][column] == 1) {
        led_matrix[(12 * (row + y_shift)) + column + x_shift] = DIGIT_COLOR;
      }
    }
  }
}


void displayWordTime() {
  fadeToBlackBy(led_matrix, NUM_MATRIX_LEDS, 10);

  uint8_t max_red_brightness = 160;
  switch (minute % 5) {
    case 0:
      led_matrix[144] = CHSV(0, 255, map(int(second / 10), 0, 6, 40, max_red_brightness));
      break;
    case 1:
      led_matrix[144] = CRGB::Green;
      led_matrix[145] = CHSV(0, 255, map(int(second / 10), 0, 6, 40, max_red_brightness));
      break;
    case 2:
      led_matrix[145] = CRGB::Green;
      led_matrix[146] = CHSV(0, 255, map(int(second / 10), 0, 6, 40, max_red_brightness));
      break;
    case 3:
      led_matrix[146] = CRGB::Green;
      led_matrix[147] = CHSV(0, 255, map(int(second / 10), 0, 6, 40, max_red_brightness));
      break;
    case 4:
      led_matrix[147] = CRGB::Green;
      led_matrix[148] = CHSV(0, 255, map(int(second / 10), 0, 6, 40, max_red_brightness));
      break;
  }

  if (((hour == 0) || (hour == 12)) && (minute == 0)) {
    if (hour == 0) {  //5th word_map element, MIDNIGHT
      fill_solid(&led_matrix[word_map[5][0]], word_map[5][1], MIDNIGHT_COLOR);
    } else {  //8th word_map element, MIDDAY
      fill_solid(&led_matrix[word_map[8][0]], word_map[8][1], MIDDAY_COLOR);
    }
  } else if (((hour == 4) || (hour == 16)) && (minute == 20) && (explicit_mode_en == true)) {
    fill_solid(&led_matrix[word_map[13][0]], word_map[13][1], WEED_COLOR);  //FOUR
    fill_solid(&led_matrix[word_map[24][0]], word_map[24][1], WEED_COLOR);  //TWENTY
    fill_solid(&led_matrix[word_map[26][0]], word_map[26][1], WEED_COLOR);  //NICE

  } else {
    switch_hour = hour; //11
    setMinutes();
    setHour();
  }
}

void readLDRs() {
  raw_daylight_val = analogRead(DAYLIGHT);
  raw_ambient_val = analogRead(AMBIENT);
  raw_control_val = analogRead(CONTROL);

  int taget_brightness = map(raw_daylight_val, 0, 1024, 0, MAX_MAXTRIX_BRIGHTNESS);
  int current_brightness = FastLED.getBrightness();

  if (current_brightness < taget_brightness) {
    current_brightness++;
  } else {
    current_brightness--;
  }
  char buffer[40];
  sprintf(buffer, "Brightness: %d\tTarget: %d", current_brightness, taget_brightness);
  Serial.println(buffer);

  FastLED.setBrightness(current_brightness);
}


void setHour() {
  if (switch_hour > 11) switch_hour -= 12;
  switch (switch_hour) {
    case 0:  //15th word_map element
      fill_solid(&led_matrix[word_map[15][0]], word_map[15][1], CHSV(hue, 255, 255));

      break;
    case 1:  //21st word_map element
      fill_solid(&led_matrix[word_map[21][0]], word_map[21][1], CHSV(hue, 255, 255));

      break;
    case 2:  //20th word_map element
      fill_solid(&led_matrix[word_map[20][0]], word_map[20][1], CHSV(hue, 255, 255));

      break;
    case 3:  //10th word_map element
      fill_solid(&led_matrix[word_map[10][0]], word_map[10][1], CHSV(hue, 255, 255));

      break;
    case 4:  //13th word_map element
      fill_solid(&led_matrix[word_map[13][0]], word_map[13][1], CHSV(hue, 255, 255));

      break;
    case 5:  //18th word_map element
      fill_solid(&led_matrix[word_map[18][0]], word_map[18][1], CHSV(hue, 255, 255));

      break;
    case 6:  //12th word_map element
      fill_solid(&led_matrix[word_map[12][0]], word_map[12][1], CHSV(hue, 255, 255));

      break;
    case 7:  //16th word_map element
      fill_solid(&led_matrix[word_map[16][0]], word_map[16][1], CHSV(hue, 255, 255));

      break;
    case 8:  //19th word_map element
      fill_solid(&led_matrix[word_map[19][0]], word_map[19][1], CHSV(hue, 255, 255));

      break;
    case 9:  //14th word_map element
      fill_solid(&led_matrix[word_map[14][0]], word_map[14][1], CHSV(hue, 255, 255));

      break;
    case 10:  //9th word_map element
      fill_solid(&led_matrix[word_map[9][0]], word_map[9][1], CHSV(hue, 255, 255));

      break;
    case 11:  //11th word_map element
      fill_solid(&led_matrix[word_map[11][0]], word_map[11][1], CHSV(hue, 255, 255));

      break;
    case 12:  //15th word_map element
      fill_solid(&led_matrix[word_map[15][0]], word_map[15][1], CHSV(hue, 255, 255));

      break;
    default:
      char buffer[40];
      sprintf(buffer, "ERROR: hour= %d", switch_hour);
      led_matrix[85] = CRGB::Red;
      Serial.println(buffer);
      break;
  }
}

void setMinutes() {
  if (minute_case != int(minute / 5)) {
    minute_case = int(minute / 5);
    hue = random(0, 255);
  }

  switch (minute_case) {
    case 0:  //22nd word_map element, XXX O'CLOCK
      fill_solid(&led_matrix[word_map[22][0]], word_map[22][1], CHSV(hue + (1 * 255 / 2), 255, 255));
      if (explicit_mode_en) {
        led_matrix[111] = CRGB::Black;
      }
      break;
    case 1:  //2nd and 4th word_map elements, FIVE PAST XXX
      fill_solid(&led_matrix[word_map[2][0]], word_map[2][1], CHSV(hue + (1 * 255 / 3), 255, 255));
      fill_solid(&led_matrix[word_map[4][0]], word_map[4][1], CHSV(hue + (2 * 255 / 3), 255, 255));

      break;
    case 2:  //0th and 4th word_map elements, TEN PAST XXX
      fill_solid(&led_matrix[word_map[0][0]], word_map[0][1], CHSV(hue + (1 * 255 / 3), 255, 255));
      fill_solid(&led_matrix[word_map[4][0]], word_map[4][1], CHSV(hue + (2 * 255 / 3), 255, 255));

      break;
    case 3:  //3th and 4th word_map elements, QUATER PAST XXX
      fill_solid(&led_matrix[word_map[3][0]], word_map[3][1], CHSV(hue + (1 * 255 / 3), 255, 255));
      fill_solid(&led_matrix[word_map[4][0]], word_map[4][1], CHSV(hue + (2 * 255 / 3), 255, 255));

      break;
    case 4:  //24th word_map element, XXX TWENTY
      fill_solid(&led_matrix[word_map[24][0]], word_map[24][1], CHSV(hue + (1 * 255 / 2), 255, 255));

      break;
    case 5:  //24th and 28th word_map elements, XXX TWENTY FIVE
      fill_solid(&led_matrix[word_map[24][0]], word_map[24][1], CHSV(hue + (1 * 255 / 3), 255, 255));
      fill_solid(&led_matrix[word_map[28][0]], word_map[28][1], CHSV(hue + (2 * 255 / 3), 255, 255));

      break;
    case 6:  //1st and 4th word_map elements, HALF PAST XXX
      fill_solid(&led_matrix[word_map[1][0]], word_map[1][1], CHSV(hue + (1 * 255 / 3), 255, 255));
      fill_solid(&led_matrix[word_map[4][0]], word_map[4][1], CHSV(hue + (2 * 255 / 3), 255, 255));

      break;
    case 7:  //25st and 28th word_map elements, XXX THIRTY FIVE
      fill_solid(&led_matrix[word_map[25][0]], word_map[25][1], CHSV(hue + (1 * 255 / 3), 255, 255));
      fill_solid(&led_matrix[word_map[28][0]], word_map[28][1], CHSV(hue + (2 * 255 / 3), 255, 255));

      break;
    case 8:  //23rd word_map element, XXX FORTY
      fill_solid(&led_matrix[word_map[23][0]], word_map[23][1], CHSV(hue + (1 * 255 / 2), 255, 255));

      break;
    case 9:  //4th and 7th word_map elements, QUARTER TO YYY
      fill_solid(&led_matrix[word_map[3][0]], word_map[3][1], CHSV(hue + (1 * 255 / 3), 255, 255));
      fill_solid(&led_matrix[word_map[7][0]], word_map[7][1], CHSV(hue + (2 * 255 / 3), 255, 255));
      switch_hour++;

      break;
    case 10:  //4th and 7th word_map elements, TEN TO YYY
      fill_solid(&led_matrix[word_map[0][0]], word_map[0][1], CHSV(hue + (1 * 255 / 3), 255, 255));
      fill_solid(&led_matrix[word_map[7][0]], word_map[7][1], CHSV(hue + (2 * 255 / 3), 255, 255));
      switch_hour++;

      break;
    case 11:  //4th and 7th word_map elements, FIVE TO YYY
      fill_solid(&led_matrix[word_map[2][0]], word_map[2][1], CHSV(hue + (1 * 255 / 3), 255, 255));
      fill_solid(&led_matrix[word_map[7][0]], word_map[7][1], CHSV(hue + (2 * 255 / 3), 255, 255));
      switch_hour++;

      break;
    default:
      char buffer[40];
      sprintf(buffer, "ERROR: minute= %d", minute);
      led_matrix[85] = CRGB::Red;
      Serial.println(buffer);
      break;
  }
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

  while (!Serial.available())
    ;
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
