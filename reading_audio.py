def reading_audiofile(filename, modus_operandi="no_change", desired_length=30, pause=1):
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
         x , sr = librosa.load(filename, duration=None)

    if modus_operandi=="repeat":
        # == filling up smaller samples with repeated sounds ==
        x , sr = librosa.load(filename, duration= desired_length)
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


    #### used for demonstration:
# directory = "/home/michael/code/vickoru/drumbeatid/data"
# audiofile = "example3.wav"
# filename=directory+"/"+audiofile

# x, sr = reading_audiofile(filename, modus_operandi="repeat", desired_length=5, pause=2)
# ipd.Audio(x, rate=sr)
