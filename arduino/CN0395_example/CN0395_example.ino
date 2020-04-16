#include <SPI.h>
#include <Wire.h>
//#include <EEPROM.h>

#include "CN0395.h"
#include "ADN8810.h"
#include "Communication.h"

static uint8_t count = 0;
sMeasurementVariables *sMeasVar;
extern uint8_t ui8ContinousRsMeasurement;

void setup() {
  /* Initialize SPI */
  SPI.begin();
  SPI.setDataMode(SPI_MODE0); //CPHA = CPOL = 0    MODE = 0
    
  pinMode(CSADN8810_PIN, OUTPUT);
  digitalWrite(CSADN8810_PIN, HIGH);

  /* Initialize I2C */
  Wire.begin();

  sMeasVar = (sMeasurementVariables *)malloc(sizeof(*sMeasVar));

  CN0395_PowerOn(sMeasVar);
}


/**
   @brief Run the calibration routine and display the calibration correction factor
   @param sMeasVar - pointer to the struct that contains all the relevant measurement variables.
   @return none
**/
void CN0395_CmdCalibration(sMeasurementVariables *sMeasVar)
{
  uint32_t       ui32CalibrationData[2];
  float          K1 = 0;

  // Read the correction factor K1 stored in permanent memory
  //EEPROM.put(0, ui32CalibrationData);

  if (ui32CalibrationData[0] == 1) { // this array also stores the information if calibration has already been performed
    K1 = (float)(ui32CalibrationData[1] / 10000) + (float)(ui32CalibrationData[1] % 10000) / 10000;
    //Serial.print(F("Gain correction factor (K1) stored in memory is: ")); Serial.print(K1);
  }
  else {
    
    ui32CalibrationData[0] = 1; // Factory calibration has been performed, save this information in permanent memory
    ui32CalibrationData[1] = ADN8810_FactoryCalibration(); // Save gain calibreation factor in permanent memory
    //EEPROM.put(0, ui32CalibrationData);

    K1 = (float)(ui32CalibrationData[1] / 10000) + (float)(ui32CalibrationData[1] % 10000) / 10000;
    sMeasVar->K1 = K1;
    
  }
}

void loop() {
  //CN0395_CmdCalibration(sMeasVar);
  /CN0395_CmdSetHeaterCurrent(0, sMeasVar);
  delay(50); // delay 50ms
}


