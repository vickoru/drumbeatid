import numpy as np
import pandas as pd
import random
from librosa.effects import pitch_shift, time_stretch
import librosa
from librosa.util import pad_center


def process_audiofiles(loc, drummers_df, samplingrate=22050, desired_length=6):                  #loc mean location = path

    audiofiles = drummers_df['audio_filename'].values
    genre = drummers_df['style'].values
    length = drummers_dr['duration'].values

    waveforms = []
    sr = []
    genres = []

    for i in range(len(audiofiles)):
        filename_ = os.path.join(loc, audiofile[i])
        length_ = length[i]
        genre_ = genre[i]

        if length_ < desired_length:
            x, sr = reading_audiofile(filename, modus_operandi="repeat",
                              desired_length=desired_length, offset=0.0, pause=pause)
            waveforms.append(x)
            sr.append(length_)
            genres.append(genre_)

 	    if length > desired_length:
            steps=int(length//desired_length)
            for i in range(steps):
                x, sr = reading_audiofile(filename, modus_operandi="no_change",
                            desired_length=desired_length, offset=i*desired_length)

                waveforms.append(x)
                sr.append(length_)
                genres.append(genre_)

            x, sr = reading_audiofile(filename, modus_operandi="repeat",
                                desired_length=desired_length, offset=steps*desired_length, pause=pause)

            waveforms.append(x)
            sr.append(length_)
            genres.append(genre_)

    waveforms_padded = padding_waveforms(waveforms, max_length=132300, axis=0)

    return waveforms_padded, np.array(sr), genres   # ZIEL!!! (alt: preprocessed_data = [])


def reading_audiofile(filename, modus_operandi="no_change", desired_length=6, offset=0.0, pause=1):
    ''' reading in audiofiles
        requires filename (with path)
                modus_operandi:  "no_change" -> reading in audiofile in length, no padding
                                 "silence"-> padding smaller (than desired length) audio files with silence
                                 "repeat" -> padding smaller audio files with repetitive sound (+ pauses)
                desired_length:  in sec, if prespecified length is requested (default value 30)
                                 does not apply if "no_change" modus is chosen
                pause:           in sec, if modus "repeat" is chosen: if a pause between repetions is asked
        returns x (nd-array), sr (sample rate)
    '''

    if modus_operandi=="no_change":
         x , sr = librosa.load(filename, duration=desired_length, offset=0.0)

    if modus_operandi=="repeat":
        # == filling up smaller samples with repeated sounds ==
        x , sr = librosa.load(filename, duration= desired_length, offset=0.0)
        duration = x.shape[0]/sr        # in seconds
        if duration < desired_length:
            pause = int(pause * sr)     # seconds (first number) * sampling rate
            multiplier = int(desired_length // duration)
            single_x=np.append(np.zeros(pause),x)
            for i in range(multiplier):
                x = np.append(x, single_x)
            x=x[0:desired_length*sr]

    if modus_operandi=="silence":
        # == filling up smaller samples with silence ==
        x , sr = librosa.load(filename, duration= desired_length)
        duration = x.shape[0]/22000        # in seconds
        if duration < desired_length:
            filling_zeros = desired_length * sr - x.shape[0]
            x = np.append(x, np.zeros(filling_zeros))
            x=x[0:desired_length*sr]

    return x, sr


def padding_waveforms(waveforms, max_length=132300, axis=0):
    for idx, values in enumerate(waveforms):
        if values.shape[0] < max_length:
            waveforms[idx] = librosa.util.pad_center(waveforms[idx], size=max_length, axis=axis)

    return np.array(waveforms)


def augment_data(waveforms_padded, sr, genres, genre_to_augment, desired_n_of_samples, noise_factor=0.0):
    '''
    required input: waveforms_padded: list of waveforms
                    sr: list of corresponding sampling rates
                    genres: list of genre
                    genre_to_augment: which genre should be augmented?
                    desired_n_of_samples: how many samples of the genre should be there after applying the function=
                    noise_factor: should noise be added? if yes > 0.0


    returns similar to output but just more waveforms, the added ones are generated from the existing ones but
        manipulated in terms of changes of time shift, pitch and speed
    '''
    augmented_waveforms = []
    augmented_sr = []
    augmented_genres = []

    df_work = pd.DataFrame(wavforms_padded, np.array(sr), genres)
    df_work = df_work.genre[genre_to_augment]

    n_existing_samples = df_work.shape[0]
    samples_to_be_created = int(desired_n_of_samples - n_existing_samples)

    for i in range(samples_to_be_created):
        sr_=sr[rand_position]
        genre_=genres[rand_position]

        ## choosing random waveform
        random_position = random.randint(0,(n_existing_samples-1))
        new_waveform = waveforms_padded[random_position]

        #adding noise
        rand_noise = random.uniform(0,0.3)
        new_waveform = add_noise(new_waveform, .....)

        #time shift
        rand_timeshift = random.uniform(0,1.5)
        new_waveform = add_timeshift(new_waveform, sr=sr_, rand_timeshift, shift_direction="both")

        #changing pitch
        rand_pitch = random.uniform()
        new_waveform = change_pitch(new_waveform, sr=sr_, rand_pitch)

        #changing speed
        rand_speed = random.uniform(0.6,1.4)
        new_waveform = change_speed(new_waveform, rand_speed)

        # adding generated waveforms (and sr and genre to lists)
        augmented_waveforms.append(new_waveform)
        augmented_sr.append(sr_)
        augmented_genres.append(genre_)

    #padding waveforms & adding it all together
    augmented_waveforms_padded = padding_waveforms(augmented_waveforms, max_length=132300, axis=0)
    waveforms_padded = waveforms_padded + augmented_waveforms_padded
    sr = sr + augmented_sr
    genres = genres + augmented_genres

    return waveforms_padded, np.array(sd), genres


def add_noise(waveform, noise_factor):
    noise = np.random.randn(len(waveform))
    augmented_waveform = waveform + noise_factor * noise
    # Cast back to same data type
    augmented_waveform = augmented_waveform.astype(type(data[0]))

    return augmented_waveform


def add_timeshift(waveform, sr, rand_timeshift, shift_direction="both"):
    shift = random.randint(sr * rand_timeshift)
    if shift_direction == 'right':
        rand_timeshift = -rand_timeshift
    elif self.shift_direction == 'both':
        direction = np.random.randint(0, 2)
        if direction == 1:
            rand_timeshift = -rand_timeshift
    augmented_data = np.roll(data, shift)
    # Set to silence for heading/ tailing
    if shift > 0:
        augmented_data[:shift] = 0
    else:
        augmented_data[shift:] = 0

    return augmented_data


def change_pitch(waveform, sr, rand_pitch):
    return pitch_shift(waveform, sr, rand_pitch)


def change_speed(waveform, rand_speed):
    return time_stretch(waveform, rand_speed)


def test_aug(filename, duration):
    '''
    just for test, provide a filename and test the functionality of the coded functions
    '''
    x , sr = librosa.load(filename, duration=duration, offset=0.0)
    genre = "Test"
    return x_aug, sr_aug, genre_aug = augment_data(waveforms_padded=x, sr=sr, genres=genre, genre_to_augment="Test", desired_n_of_samples=3, noise_factor=0.0)


filename = "/home/michael/code/vickoru/drumbeatid/data/example2.wav"
x_aug, sr_aug, genre_aug = test_aug(filename, duration)
