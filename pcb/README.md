[Source](https://github.com/Kiogora/interferometer)

[Read Publication](https://drive.google.com/file/d/1GJpLvthfQLcUWtJsgSDRFcJauLfEz96r/view?usp=sharing)

The project is 3years old and some components are no longer available.

Sensing by LASER phase perturbation otherwise known as LASER interferometry is a powerful measurement tool useful in various applications such as velocity measurement, 
absolute distance measurement, relative distance change measurement among others. In this report we thus look at LASER interferometry as a tool for vibration measurement 
as it allows one to perform contactless measurement on a body to sense vibrations to the theoretical accuracy of larger than half a wavelength at the lasing frequency.

The implementation chosen is self mixing interferometry as the diode lasers were readily available therefore provided a good starting point to the approach chosen 
of self mixing interferometry. Includes design of a CW diode LASER driver, 
a transimpedance amplifier on the Photodiode section of the TO-18 laser diode with a -3dB cutoff of 200 kHz, 
an output high pass filter and the relevant control circuitry that allows the whole system to be tested and controlled with industry standard 32 bit, 
arduino form factor development boards such as the FREEDOM© series from NXP or the DISCOVERY© and NUCLEO© series from STMicroelectronics among others.

![3D PCB view](https://github.com/aleksas/interferometer/raw/master/pcb/images/3D-view/rotation-z/3D-view.gif)
