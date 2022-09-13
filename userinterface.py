from typing import final
import streamlit as st
import requests
from wavinfo import WavInfoReader
#from pydub import AudioSegment
from scipy.io import wavfile
from scipy.io.wavfile import read
#from dotenv import load_dotenv
import os

# Example local Docker container URL
# url = 'http://api:8000'
# Example localhost development URL
url = "http://localhost:8000"
# url_predict = "http://localhost:8000/predict"
#load_dotenv()
#url = os.getenv('API_URL')

# Set page tab display
st.set_page_config(
   page_title="Drumbeat ID Project 🥁",
   page_icon= 'X',
   layout="wide",
   initial_sidebar_state="expanded",
)

# Main Text on Homepage
'''
# User Interface for Drum Beat ID 🥁

### Upload WAV-File and get the result of our classification:
'''
# File uploading section
st.set_option('deprecation.showfileUploaderEncoding', False)
uploaded_wav = st.file_uploader("Choose a WAV file", type="wav", accept_multiple_files=False)



if uploaded_wav is not None:
    # st.write('### Play audio')
    # audio_bytes = uploaded_wav.read()
    # st.audio(audio_bytes, format='audio/wav')

    
     # read and play the audio file
    st.write('### Play audio')
    audio_bytes = uploaded_wav.read()
    st.audio(audio_bytes, format='audio/wav')
    
    
    res = requests.post(url + "/upload_wav", files={'wav': uploaded_wav })
    genre = res.json()['genre']

   

   # Progress bar
    st.spinner("Sending the Audiofile to the API ...")

    # read and play the audio file
    # st.write('### Play audio')
    # audio_bytes = uploaded_wav.read()
    # st.audio(audio_bytes, format='audio/wav')


    if st.button('Analyze Audiofile'):
        st.write('### Analysis of Wave-File performed ! 🎉')
        # res = requests.post(url + "/upload_wav", files={'wav': uploaded_wav })
        # genre = res.json()['genre']
        # # genre = "Rock"

        with st.expander("See result of analysis 👀"):
            st.write(f"### The style of your drumbeat is:")
            st.write(f"## _{genre.capitalize()}_")
            st.image("https://www.rollingstone.de/wp-content/uploads/2016/04/01/12/John-Bonham-GettyImages-77186814-992x560.jpg", width=500)
            # st.balloons()


#OLD CODE

# If Button 'Analyze Audiofile' is pushed following code will be sent to API
#if uploaded_wav is not None and st.button('Analyze Audiofile'):
    #st.spinner("Sending the Audiofile to the API ...")
   # res = requests.post(url + "/upload_wav", files={'wav': uploaded_wav })
    #genre = res.json()['genre']

   # if res.status_code == 200:
       # print('OK')
       # st.write(genre)

        # y, sr = librosa.load(uploaded_wav, duration=6)
        # print(sr)
        # # parameters = {
        #     'waveform': y,
        #     'sampling_rate': sr
        # }

        # prediction = requests.get(url_predict, params=parameters).json()['genre']
        # st.write(prediction)
        # '''
        # ## Analysis of Wave-File performed ! 🎉
        # ### Result: This song is definetely a Helene Fischer-Schlager
        # '''
        # # st.balloons()

   # if res.status_code != 200:
      #  '''
      #  Analysis was not successful. Please try again...
      #  print(res.status_code, res.content)
      #  '''
