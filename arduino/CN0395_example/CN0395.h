/*!
 *****************************************************************************
   @file:    CN0395.h
   @brief:
   @version: $Revision$
   @date:    $Date$
  -----------------------------------------------------------------------------

  Copyright (c) 2017 Analog Devices, Inc.

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

#ifndef CN0395_H_
#define CN0395_H_


#include <Arduino.h>
/********************************* Global data ********************************/
#define ALPHA      0.003074

/****************************** Internal types *********************************/
typedef struct {
  float       fAmbientHeaterTemp;  // T_A
  float       fAmbientHeaterHum;   // HUM
  float       fAmbientHeaterRes;   // RH_A
  float       fHeaterVoltage;      // VH
  float       fHeaterCurrent;      // IH
  float       fHeaterRes;          // RH
  float       fHeaterTemp;         // TH
  float       fHeaterPower;        // PH
  float       fSensorRes;          // RS
  float       fSensorResCleanAir;  // Ro
  float       fSensorVoltage;      // VS
  float       fPPM;                // PPM
  uint32_t    ui32GainResistance;  // RG
  uint16_t    ui16LastAdcDataRead;
  uint8_t     OpMode;
  float       K1;                  // Gain correction factor
} sMeasurementVariables;

typedef enum {
  VOLTAGE,
  RESISTANCE
} enCN0395ErrCorrection;

typedef  void (*cmdFunc)(uint8_t *, sMeasurementVariables *);

/******************************************************************************/
/* Functions Prototypes                                                       */
/******************************************************************************/
/* Function which performs the power up routine */
void CN0395_PowerOn(sMeasurementVariables *sMeas);
/* Routine for Setting Heater Current to Constant Current  IH */
void CN0395_CmdSetHeaterCurrent(uint8_t *args, sMeasurementVariables *sMeasVar);

#endif
