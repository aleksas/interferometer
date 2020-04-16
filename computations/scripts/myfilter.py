import scipy.signal
import numpy as np

def butter_lowpass(signal, fs, filt_order=4,cutoff=200e3):
    b, a = scipy.signal.butter(filt_order, cutoff/(fs/2), 'low', analog=True)
    #Apply the filter to the signal
    output = scipy.signal.lfilter(b,a, signal)
    print output
    w, h=scipy.signal.freqs(b, a)
    #print w
    
    return output, w, h