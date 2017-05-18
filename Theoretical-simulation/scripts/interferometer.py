import scipy
import numpy as np
import matplotlib.pyplot as plt
import scipy.optimize as opt

"""
    This script plots the model the Lang and Kaboyashi phase equation that determine chaos in 
    a semiconductor laser with optical feedback.
    


    Copyright (c) 2017 Alois Mbutura Kiogora

    Permission is hereby granted, free of charge, to any person obtaining
    a copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:

    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

    Created on Wed May 3 01:34 EAT 2017
 
"""

class SMI(object):
    def __init__(self, timespan):
        self.c=0.8
        self.alpha=3
        self.t=timespan
        #reflective surface displacement function
        self.vibrational_freq=200 #Hz
        self.vibrational_amplitude=10*np.pi

        #vibrational_amplitude-Max peak amplitude from rest for simple harmonic motion expressed in radians as we are
        #working with sinusoids.Initial displacement can even be random as per our frame of reference.
        self.init_disp=3.9e6 #radian
        
        #The init_disp can be seen as a DC constant value added to the displacement fuction.
        #self.displacement=self.init_disp+(self.vibrational_amplitude*np.sin(2*np.pi*self.vibrational_freq*self.t))
        self.leh=np.arctan(self.alpha)
        self.phi_o=self.init_disp+self.vibrational_amplitude*np.sin(2*np.pi*self.vibrational_freq*self.t)

    def f(self, phi_f, idx):
        return phi_f-(self.c*np.sin(phi_f+self.leh))-self.phi_o[idx]
    
    def solve(self, idx):
        return opt.fsolve(self.f,1,args=(idx))
    
    def get_linewidthfactor(self):
        return self.alpha
    
    def get_feedbackfactor(self):
        return self.c
    
    def get_displacement(self):
        return self.phi_o
    
    def get_freq(self):
        return self.vibrational_freq
        #No need to recalculate
    
    def update_freq(self, newfreq):
        self.vibrational_freq=newfreq
        #recalculate
        self.leh=np.arctan(self.alpha)
        self.phi_o=self.init_disp+self.vibrational_amplitude*np.sin(2*np.pi*self.vibrational_freq*self.t)
        
    def update_feedbackfactor(self, newfeedback):
        self.c=newfeedback
    
    def update_linewidthfactor(self, newlinewidth):
        self.alpha=newlinewidth
        #recalculate
        self.leh=np.arctan(self.alpha)
        self.phi_o=self.init_disp+self.vibrational_amplitude*np.sin(2*np.pi*self.vibrational_freq*self.t)
    
    
def plotSpectrum(y,Fs):
 """
 Plots a Single-Sided Amplitude Spectrum of y(t)
 """
 n = len(y) # length of the signal
 k = np.arange(n)
 T = n/Fs
 frq = k/T # two sides frequency range
 frq = frq[range(n/2)] # one side frequency range

 Y = scipy.fft(y)/n # fft computing and normalization
 Y = Y[range(n/2)]
 
 plt.plot(frq,abs(Y),'r') # plotting the spectru
 plt.ylabel('|Y(freq)|')
 #X label should be defined outside the subplot within the figure.

if  __name__=="__main__":
    t=np.linspace(0,6e-2,1e4)
    #t=0.001
    
    smi=SMI()

    feedback_phase = np.zeros(shape=(1,1))

    for index, elem in enumerate(t):
        feedback_phase=np.append(feedback_phase,smi.solve(index))
    
    feedback_phase=feedback_phase[1:]
    
    #print feedback_phase.shape
    #print smi.phi_o
    
    phi_1=np.sin(feedback_phase+np.arctan(smi.get_linewidthfactor()))
    feedback=smi.getfeedback_factor()*phi_1

    Fs = 52600.0;  # sampling rate
    Ts = 1.0/Fs; # sampling interval
    
##    plt.subplot(311)
##    plt.plot(time/Ts,smi.getdisplacement())
##    plt.title("Reflective surface displacement under simple harmonic motion, spectral display. Fs=52600")
##    #fig.add_subplot(612)
##    #plotSpectrum(smi.phi_o,Fs)
##    plt.subplot(312)
##    plt.plot(time/Ts,feedback)
##    plt.title(r'$\phi_f (t)$')     
##    #fig.add_subplot(622)
##    #plotSpectrum(feedback,Fs)
##    plt.subplot(313)
##    plt.plot(time/Ts,feedback_phase)
##    plt.title(r'$\phi_1 (t)$')
##    plt.xlabel("Samples(n)")
##    #fig.add_subplot(632)
##    #plotSpectruupdate_freqm(feedback_phase,Fs)
    plt.title("Frequency content of phase feedback, spectral display. Fs=52600")
    plotSpectrum(feedback,Fs)
    plt.xlabel("Normalised freq")
    plt.show()