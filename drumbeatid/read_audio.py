import os
import librosa

def read_audiopath(abspath, df_drummers, idb):
    '''
    1. Takes abspath as argument,
    abspath = os.path.abspath('.')
    2. Takes the datframe as second input.
    3. idb is the index in the dataframe.
    Dataframe should be located in 'raw_data/groove/'
    '''
    location = os.path.join(pwd, '..', 'raw_data', 'groove')
    drumbeat = df_drummers.loc[idb, 'audio_filename']
    wavFile = os.path.join(location, drumbeat)

    return wavFile

def read_audio(audiofile_path, samplingrate=22050, duration=None):
    '''
    Reading in audiofile, returns 1-dimensional array x, sampling rate sr
    '''

    x , sr = librosa.load(audiofile_path, sr=samplingrate, duration=duration)
    return x, sr
