# Self mixing interferometer
Schematic designs and theoretical simulation to aid in building a self mixing optical interferometer.
Theoretical explanation of pcb purpose and circuit part choices explained in [this document](./documents/Laser_diode_modulation.pdf) (skip simulation details). 

General idea is explained in [the video](https://youtu.be/MUdro-6u2Zg?t=1291). More in depth eplanation can be found at least in [this publication](https://scihub.bban.top/10.1364/AOP.7.000570).

Main motivation is to develope a convinient device toplay around with self mixing interferometry. It provides significant improvement in precision over [ToF distance estimation](https://en.wikipedia.org/wiki/Time-of-flight_camera) ([Arduino ToF sensor](https://osoyoo.com/2019/04/21/arduino-lesson-vl53l0x-time-of-flight-distance-sensor/)). Apart from using in objct distance and speed estimation it also can be usefull for harmonic motion measurements, e.g. submicron vibrations.  

## Plan
- [ ] Update [current arduino shield](./pcb/) to make convinient self-mxing laser interferometry easily accesible
  - [ ] __Laser diode current modulation__
    - [ ] (Optional) Reproduce convinient SPICE simulation from [document (p. 34)](./documents/Laser_diode_modulation.pdf)
    - [x] Prepare board for convinient pcb manufacturing
      Capacitors, resistors, leds are loosely defined. Missing voltage and maybe other parameters. Entries like ARDUINO_SHIELD or measuring points only add to the confusion.  
      - [EasyEda](https://easyeda.com/aleksas_/self-mixing-laser-interferometer) | [LCSC](https://lcsc.com/)
    - [x] Optional: update [KiCAD model](./pcb/)
      - so that it visualizes electronic components in 3D
      - doesn't depend on deprecated symbols
    - [x] Assess the modulation frequency of ADN8810
      - [~333 kHZ](https://electronics.stackexchange.com/questions/497171/adn8810-control-frequency-from-arduino-due/497173?noredirect=1#comment1266315_497173)
    - [ ] Assess the probable performace of the board
      - [ ] Controlled by [Arduino DUE](https://www.arduino.cc/en/Guide/ArduinoDue) (preferred)
        - [ ] What is maximum laser diode modulation frequencynoredirect=1#comment1266315_497173)
        - [ ] What is the maximum precision of modulated current 
      - [ ] Controlled by [STM32F4DISCOVERY](https://www.st.com/en/evaluation-tools/stm32f4discovery.html)
        - [ ] What is maximum laser diode modulation frequency
        - [ ] What is the maximum precision of modulated current     
  - [ ] __Physical printed and assemled board validation__
    - [x] Assemble board and connect to Arduino or arduino form factor development board
    - [ ] Write software to control PCB laser diode modulation
      - [Code for modulatin ADN8810 from arduino](https://github.com/analogdevicesinc/arduino/blob/486ce99954853b3e9f34e81e827f400b49ca4765/Arduino%20Uno%20R3/examples/CN0395_example/ADN8810.cpp#L117-L140)
      - [Arduino SPI Barometric Pressure Sensor](https://www.arduino.cc/en/Tutorial/BarometricPressureSensor)      
      - [Some code](./arduino)
    - [ ] Verify laser diode modulation input
    - [ ] Verify laser monitor diode signal has interference pattern
  - [ ] __Estimating values form monitor diode signal__
    - FPGA ?
- [ ] Software for theoretical signal simulation and distance,velocity estimation
  - [ ] [Python scripts for simulating and estimatimating values](https://gist.github.com/aleksas/e764e93894b7945427d594147ea23370)
    - [x] Distance to stationary object
    - [x] Distance and velocity of moving/stationary object
    - [ ] Velocity of moving object having noisy signal
