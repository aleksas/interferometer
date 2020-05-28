/*!
 *****************************************************************************
   @file:    CN0395.c
   @brief:
   @version: $Revision$
   @date:    $Date$
  -----------------------------------------------------------------------------

  Copyright (c) 2018 Analog Devices, Inc.

  All rights reserved.

  Redistribution and use in source and binary forms, with or without modification,
  are permitted provided that the following conditions are met:
  - Redistributions of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer.
  - Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.
  - Modified versions of the software must be conspicuously marked as such.
  - This software is licensed solely and exclusively for use with processors
    manufactured by or for Analog Devices, Inc.
  - This software may not be combined or merged with other code in any manner
    that would cause the software to become subject to terms and conditions
    which differ from those listed here.
  - Neither the name of Analog Devices, Inc. nor the names of its
    contributors may be used to endorse or promote products derived
    from this software without specific prior written permission.
  - The use of this software may or may not infringe the patent rights of one
    or more patent holders.  This license does not release you from the
    requirement that you obtain separate licenses from these patent holders
    to use this software.

  THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES, INC. AND CONTRIBUTORS "AS IS" AND ANY
  EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT,
  TITLE, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN
  NO EVENT SHALL ANALOG DEVICES, INC. OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
  INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, PUNITIVE OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, DAMAGES ARISING OUT OF CLAIMS OF INTELLECTUAL
  PROPERTY RIGHTS INFRINGEMENT; PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
  OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
  EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 *****************************************************************************/

#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>

#include "CN0395.h"
#include "Communication.h"

#include "ADN8810.h"

/************************* Variable Definitions ******************************/

uint32_t RsTime = 0;
uint8_t ui8ContinousRsMeasurement = 0;

/**
   @brief After initialization, circuit resets then measures heater ambient temperature T_A,
          humidity HUM, then ambient temperature heater resistance RH_A. Save T_A, HUM, RH_A.
          Also reads the correction factor (K1) from the permanent memory.
          Moreover, it is assumed that init is performed in clean air, therefore we measure Ro.

   @param sMeasVar - pointer to the struct that contains all the relevant measurement variables

   @return None.
**/
void CN0395_PowerOn(sMeasurementVariables *sMeasVar)
{
  uint16_t ui16AdcData;
  float    fHeaterVoltage;
  float    fAmbientHeaterRes;
  float    fAmbientHeaterTemp;
  float    fAmbientHeaterHum;
  uint32_t ui32CalibrationData[2];

  // Enable master power on IO5 and reset DAC
  ADN8810_Init();

  if (ui32CalibrationData[0] == 1) { // first element of the array is the information if calibration has been performed before
    // The second element of the array is the gain calibration factor which needs to be converted from uint32_t to float
    sMeasVar->K1 = (float)(ui32CalibrationData[1] / 10000) + (float)(ui32CalibrationData[1] % 10000) / 10000;
  }
  else {
    // In the case that Factory Calibration has never been performed before, use gain calibration factor of 1
    sMeasVar->K1 = 1;
  }

  delay(50);

  // Set default heater current to 8mA
  sMeasVar->fHeaterCurrent = 8;
  ADN8810_SetOutput(sMeasVar->fHeaterCurrent, sMeasVar);

  // Delay 20uS; this is long enough for DAC current to settle, but not long enough for heater temp to change
  delayMicroseconds(20);

  // Calculate RH_A = VH_A / 8mA
  fAmbientHeaterRes = (fHeaterVoltage / sMeasVar->fHeaterCurrent) * pow(10, 3);
  
  // Store some init measurement values for future calculations
  sMeasVar->fAmbientHeaterRes = fAmbientHeaterRes;
  sMeasVar->fHeaterVoltage = fHeaterVoltage;
  sMeasVar->fAmbientHeaterTemp = fAmbientHeaterTemp;
  sMeasVar->fAmbientHeaterHum = fAmbientHeaterHum;
}

/**
   @brief Routine for Setting Heater Current to Constant Current  IH (The default value is IH = 8mA)

   @param sMeasVar - pointer to the struct that contains all the relevant measurement variables

   @return None.
**/
void CN0395_CmdSetHeaterCurrent(uint8_t *args, sMeasurementVariables *sMeasVar)
{
  uint8_t  *p = args;
  char     arg[3];
  float    fDesiredHeaterCurrent;
  uint16_t ui16AdcData;
  float    fHeaterVoltage;

  fDesiredHeaterCurrent = 2.3f; // convert string to float

  if (ADN8810_SetOutput(fDesiredHeaterCurrent, sMeasVar) > 0) { // max current is 50 mA
    delay(50); // delay 50ms
  }
}
