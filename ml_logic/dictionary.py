##

def dictionary_genres(idx, model_mode='reducedgenre'):
    if model_mode == 'reducedgenre':
        dict_genres = {
            0: 'funk',
            1: 'hiphop',
            2: 'jazz',
            3: 'latin',
            4: 'rock'
        }
    else:
        dict_genres = {0: 'afrobeat',
                    1: 'afrocuban',
                    2: 'blues',
                    3: 'country',
                    4: 'dance',
                    5: 'funk',
                    6: 'gospel',
                    7: 'hiphop',
                    8: 'jazz',
                    9: 'latin',
                    10: 'middleeastern',
                    11: 'neworleans',
                    12: 'pop',
                    13: 'punk',
                    14: 'reggae',
                    15: 'rock',
                    16: 'soul'}

    return dict_genres[idx]
