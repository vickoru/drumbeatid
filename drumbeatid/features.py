
import librosa

def calculate_mfccs(waveform, samplingrate, number_coeffs=20):
    '''
    Caluculate Mel frequency cepstral coefficients.
    Input:
    waveform: array representing the waveform originating from audio file
    samplingrate: sampling rate from audio
    number_coeffs: total number of coefficients to calculate, default is 20
    Output: array of mfccs
    '''
    mfccs = librosa.feature.mfcc(y=waveform, sr=samplingrate,
                                 n_mfcc=number_coeffs)
    return mfccs


def calculate_specbandwidth(waveform, samplingrate, order_p=2):
    '''
    Calculates spectral bandwithd of oder p
    '''
    specbw = librosa.feature.spectral_bandwidth(y=waveform, sr=samplingrate,
                                                p=order_p)

    return specbw


def calculate_spectralcentroid(waveform, samplingrate, nfft=2048, hoplength=512):
    '''
    Calculate spectral centroid
    '''
    specent = librosa.feature.spectral_centroid(y=waveform,
                                                sr=samplingrate, n_fft=nfft,
                                                hop_length=hoplength)

    return specent


def calculate_chroma(waveform, samplingrate, nfft=2048, hoplength=512):
    '''
    Chroma Feature calculation with a hop length of 512 as default

    '''
    chromafeat = librosa.feature.chroma_stft(y=waveform, sr=samplingrate,
                                             n_fft=nfft,
                                             hop_length=hoplength)

    return chromafeat


def calculate_zerocrossrate(waveform, framelength=2048, hoplength=512,):
    '''
    Caluculate Zero crossing rate.

    '''
    zerocr = librosa.feature.zero_crossing_rate(y, frame_length=framelength,
                                                hop_length=hoplength)

    return zerocr


def calculate_spectralroff(waveform, samplingrate, nfft=2048, hoplength=512):
    '''
    Calculate spectral roll off of the waveform
    '''
    specroff = librosa.feature.spectral_rolloff(y=waveform,
                                                sr=samplingrate, n_fft=nfft,
                                                hop_length=hoplength)

    return specroff
