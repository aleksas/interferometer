import interferometer as interf
import scipy
import numpy as np
import matplotlib.pyplot as plt
import myfilter

vibration_freq_list=np.linspace(0,40e3,50)
feedback_factor=np.linspace(0,5,50)
linewidth_factor=np.linspace(0,5,50)
time=np.linspace(0,2e-2,1e4)

smi=interf.SMI(time)
Fs = 2e6;  # sampling rate-Hz
Ts = 1.0/Fs; # sampling interval

#Approximation of Opamp filter

print scipy.__version__
for idx, item in enumerate(feedback_factor):
    #smi.update_freq(item)
    #smi.update_linewidthfactor(item)
    smi.update_feedbackfactor(item)
    
    feedback_phase = np.zeros(shape=(1,1))

    for index, elem in enumerate(time):
        feedback_phase=np.append(feedback_phase,smi.solve(index))

    feedback_phase=feedback_phase[1:]
    phi_1=np.sin(feedback_phase+np.arctan(smi.get_linewidthfactor()))
    feedback=smi.get_feedbackfactor()*phi_1
    #Create freq plot
    plt.subplot(311)
##    plt.title(r"$\alpha={val1}, C={val2}, F_s={val3}, vibration={val4} Hz$".format(val1=smi.alpha,val2=smi.c,val3=Fs, val4=item))
    plt.title("Actual feedback signal")
    plt.plot(time/Ts,feedback)
    plt.xlabel("Samples[n]")

    plt.subplot(312)
    filtered, w,h=myfilter.butter_lowpass(feedback, Fs)
    plt.title("filtered feedback signal")
    #print filtered
    plt.plot(time/Ts,filtered)
    plt.xlabel("Samples[n]")
    
    plt.subplot(313)
    plt.title("Approximate opamp gain function")
    plt.semilogx(w, 20 * np.log10(abs(h)))
    plt.xlabel('Frequency [radians / second]')
    plt.ylabel('Amplitude [dB]')
    plt.margins(0, 0.1)
    plt.grid(which='both', axis='both')
    plt.axvline(100, color='green') # cutoff frequency
    
##    plt.xlabel("Samples[n]")
##    plt.plot(time/Ts,feedback)
##    plt.subplot(212)

##    interf.plotSpectrum(feedback,Fs)
##    plt.xlabel("Frequency")
##    plt.set_ylim(0.0,0.16)
    plt.savefig('spectrum-{idx}.png'.format(idx=idx))
    #plt.savefig('spectrum-2000.png')
    plt.clf()