The implementation chosen is self mixing interferometry as the diode lasers were readily available therefore provided a good starting point to the approach chosen 
of self mixing interferometry. Includes design of a CW diode LASER driver, 
a transimpedance amplifier on the Photodiode section of the TO-18 laser diode with a -3dB cutoff of 200 kHz, 
an output high pass filter and the relevant control circuitry that allows the whole system to be tested and controlled with industry standard 32 bit, 
arduino form factor development boards such as the FREEDOM© series from NXP or the DISCOVERY© and NUCLEO© series from STMicroelectronics among others.

![3D PCB view](https://github.com/aleksas/interferometer/raw/master/pcb/images/animation.gif)
[Interactive 3D preview](https://aleksas.github.io/interferometer)

## PCB Components

### [ADN8810 (ADN8810ACPZ)](https://www.analog.com/en/products/adn8810.html?doc=ADN8810.pdf) - 12-Bit High Output Current Source [by Analog Devices](https://www.analog.com/)
- [Data Sheet](datasheets/ADN8810.pdf) ([source](https://www.analog.com/media/en/technical-documentation/data-sheets/ADN8810.pdf))

### [OPA320 (OPA320SAIDBVT)](https://www.ti.com/product/OPA320) - Precision, 20-MHz, 0.9-pA, Low-Noise, RRIO, CMOS Operational Amplifier With Shutdown by [Textas Instruments](https://www.ti.com/)
- [Data Sheet](datasheets/opa320.pdf) ([source](https://www.ti.com/lit/ds/symlink/opa320.pdf?ts=1592210569432))
- [PSpice](spice/OPA320.LIB) ([source](https://www.ti.com/lit/zip/sbom437))

### [ADR292 (ADR292GRUZ)](http://www.analog.com/ADR292) - Low Noise Micropower 4.096 V Precision Voltage Reference [by Analog Devices](https://www.analog.com/)
- [Data Sheet](datasheets/ADR291_292.pdf) ([source](https://www.analog.com/media/en/technical-documentation/data-sheets/ADR291_292.pdf))

### ADL-65055TL - N-Type ALGalnP Visible Laser Diode by [Laser Comonents](https://www.lasercomponents.com/)/[Arima Lasers](https://www.arimalasers.com/)
- [Data Sheet](datasheets/adl-65055tl.pdf) (sources: [1](https://www.lasercomponents.com/fileadmin/user_upload/home/Datasheets/arima/655nm/adl-65055tl.pdf), [2](http://www.farnell.com/datasheets/43655.pdf?_ga=2.22848763.1942577091.1592211693-817925239.1592211693), [3](http://www.farnell.com/datasheets/43655.pdf))
- [PSpice](spice/ADL65055TL.lib) ([source](https://www.eit.lth.se/sprapport.php?uid=824))

### [FDC637BNZ](https://www.onsemi.com/products/discretes-drivers/mosfets/fdc637bnz) - N-Channel 2.5V Specified PowerTrench MOSFET by [ON Semiconductor](https://www.onsemi.com)
- [Data Sheet](datasheets/FDC637BNZ-D.pdf) ([source](https://www.onsemi.com/pub/Collateral/FDC637BNZ-D.pdf))
- [PSpice](spice/FDC637BNZ.lib) ([source](https://www.onsemi.com/pub/Collateral/FDC637BNZ.lib))

## References
- [Original project by Kiogora](https://github.com/Kiogora/interferometer)
  - [Whitepaper](https://github.com/aleksas/interferometer/raw/master/documents/Laser_diode_modulation.pdf)
