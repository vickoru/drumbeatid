import numpy as np
import matplotlib.pyplot as plt

import librosa
import librosa.display

directory = "/home/michael/code/vickoru/drumbeatid/data"
filename = "example1.wav"
audiofile = directory+'/'+audiofile

def reading_in_audio(audiofile):
# reading in audiofile, returns 1-dimensional array x, sampling rate sr
    x , sr = librosa.load()
    return x, sr


def spectogram(x, sr):
#  ===  1 Spectogram  ===
#  requires 1-dimensional array x(timeseries), sampling rate sr
#  returns spectogram, a matplotlib.colormesh object

    #performing short time- Fourier analysis
    X = librosa.stft(x)

    #amplitudes of given frequency at given time -> spectrogram
    Xdb = librosa.amplitude_to_db(abs(X))

    plt.figure(figsize=(6, 5), frameon=False)
    #librosa.display.specshow(Xdb, sr=sr, x_axis='time', y_axis='hz') # for demonstration purposes
    return spectogram = librosa.display.specshow(Xdb, sr=sr, x_axis=None, y_axis=None) # without axes


def mfcc(x, sr):
#  ==== 2 Mel Frequency Cepstral Coefficients (MFCCs) ===
#  requires 1-dimensional array x(timeseries), sampling rate sr
# returns mfcc, a matplotlib.colormesh object

    mfccs = librosa.feature.mfcc(y=x, sr=sr)

    plt.figure(figsize=(6, 5))
    return mfcc = librosa.display.specshow(mfccs, sr=sr, x_axis='time')
