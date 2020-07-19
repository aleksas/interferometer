#include <SPI.h>
#include <Arduino.h>

#define CSADN8810_PIN            10
#define IO5ADN8810_PIN           5
#define IO7ADN8810_PIN           7

#define SERIAL_COMM           false

#define ADN8810_ADR                 0x00   // Hard wired device address
#define ADN8810_RSN                 66.2f  // Ohms

#define ADN8810_FULL_SCALE_OUT      4095
#define ADN8810_HALF_SCALE_OUT      2048
#define ADN8810_QUARTER_SCALE_OUT   1024

#define ADN8810_CHOSEN_MAX_VALUE 1024
#define ADN8810_CHOSEN_MIN_VALUE 512

#define ADN8810_VALUE_COUNT (ADN8810_CHOSEN_MAX_VALUE - ADN8810_CHOSEN_MIN_VALUE)
#define ADN8810_VALUE_HALF_COUNT (ADN8810_VALUE_COUNT / 2)

#define ADN8810_DELAY_US 50

typedef enum {
  ADN8810_DISABLE,
  ADN8810_ENABLE
} enADN8810Status;

void ADN8810_MasterPower(enADN8810Status status)
{
  if (status == ADN8810_ENABLE)
    digitalWrite(IO7ADN8810_PIN, HIGH); // enable master power on IO5
  else if (status == ADN8810_DISABLE)
    digitalWrite(IO7ADN8810_PIN, LOW);
}

void ADN8810_Reset(void)
{
  /* Reset DAC: Make RESET IO7 logic 0 */
  digitalWrite(IO5ADN8810_PIN, LOW);
  delay(1); // delay 1ms
  digitalWrite(IO5ADN8810_PIN, HIGH);
}

void ADN8810_Init(void) {
  pinMode(IO5ADN8810_PIN, OUTPUT); /* Set IO5ADN8810 pin as output */
  pinMode(IO7ADN8810_PIN, OUTPUT); /* Set IO7ADN8810 pin as output */

  ADN8810_MasterPower(ADN8810_ENABLE); //  enable master power on IO5

  ADN8810_Reset(); // Reset DAC
}

void SPI_Write(uint8_t ui8address, uint8_t ui8data)
{
  /* Set ADN8810 CS low */
  digitalWrite(CSADN8810_PIN, LOW);

  /* Send first byte */
  SPI.transfer(ui8address);
  /* Send second data byte */
  SPI.transfer(ui8data); // 8 data bits

  /* Set ADN8810 CS high */
  digitalWrite(CSADN8810_PIN, HIGH);
}

void setup() {
  if (SERIAL_COMM) { 
    Serial.begin(9600);
  
    while (!Serial) {
      ; // wait for serial port to connect. Needed for native USB port only
    }
  }
  
  /* Initialize SPI */
  SPI.begin();
  SPI.setDataMode(SPI_MODE0);
  
  ADN8810_Init();
}

inline void witeCode(uint16_t code){
    uint8_t ui8UpperByte = 0;       /* Data byte MSB */
    uint8_t ui8LowerByte = 0;       /* Data byte LSB */

    /* build 12 bits of data + 4 bits of device address */
    ui8UpperByte = (uint8_t)(((code & 0xF00) >> 8) | (ADN8810_ADR << 4)); // 4 address and 4 data bits
    ui8LowerByte = (uint8_t)(code & 0xFF); // 8 bits of data
    
    SPI_Write(ui8UpperByte, ui8LowerByte);
}


uint16_t i = 0;
float code = ADN8810_CHOSEN_MIN_VALUE;
float delta = (ADN8810_CHOSEN_MAX_VALUE - ADN8810_CHOSEN_MIN_VALUE) / (1.0f * ADN8810_VALUE_HALF_COUNT);

void loop() {
  witeCode((int16_t) code);
  code += delta * ((i < ADN8810_VALUE_HALF_COUNT) ? 1 : -1);
  
  i = (i + 1) % ADN8810_VALUE_COUNT;
  
  delayMicroseconds(ADN8810_DELAY_US);
  
  if (SERIAL_COMM) {   
    Serial.print(code);
    Serial.print(' ');
    Serial.print(delta);
    Serial.print('\n');
  }
}
