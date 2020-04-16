# Maximum current change frequency for [ADN8810](https://www.analog.com/media/en/technical-documentation/data-sheets/ADN8810.pdf) controlled by [Arduino Due](https://store.arduino.cc/arduino-due).

The maximum SCLK frequency, according to the [datasheet](https://www.analog.com/media/en/technical-documentation/data-sheets/ADN8810.pdf), is 12.5 MHz, and 
a transfer takes 16 bits, so that limits update rate to (12.5 / 16) MHz = 100 MHz / 128 = 781 kHz.

Settling time of the output of 3 µs, so, for accurate output after every write will take 16 / 12.5 µs + 3µs, 
but that's just latency; effective possible rate of accurate change is 1/(3µs) = 333.33 kHz.

From fig. 13 one can see that the output impedance, however, starts drastically changing after ca. 1 kHz, 
so whether or not that works for you: depends on what you attach to it.

## Arduino Due
A 84 MHz ARM Cortex-M3 like used on that board should do a couple MHz of SPI rate, easily. 
Depending on efficient the Arduino SPI library – it might or might not be simple and close to the metal – 
but software is easy to replace; [FreeRTOS](https://www.freertos.org/) runs on the [Arduino Due](https://store.arduino.cc/arduino-due), 
so it may save form maneuvering into a development dead-end if the Arduino software platform doesn't work.
