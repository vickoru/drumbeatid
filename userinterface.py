import streamlit as st
from PIL import Image
import requests
from dotenv import load_dotenv
import os

# Example local Docker container URL
# url = 'http://api:8000'
# Example localhost development URL
# url = 'http://localhost:8000'
load_dotenv()
url = os.getenv('API_URL')

# Set page tab display
st.set_page_config(
   page_title="Drumbeat ID Project",
   page_icon= 'X',
   layout="wide",
   initial_sidebar_state="expanded",
)

# Main Text on Homepage
'''
# User Interface for Drum Beat ID

### Select and Upload WAV-File and get the result of our classification:
'''
# File uploading section
st.set_option('deprecation.showfileUploaderEncoding', False)
uploaded_wav = st.file_uploader("Choose a WAV file", type="wav", accept_multiple_files=False)

# If Button 'Analyze Audiofile' is pushed following code will be sent to API
if uploaded_wav is not None and st.button('Analyze Audiofile'):
    st.spinner("Sending the Audiofile to the API ..."))
    res = requests.post(url + "/upload_wav", files={'wav': uploaded_wav}

    if res.status_code == 200:
        '''
        ## Analysis of Wave-File performed ! 🎉

        ### Result: This song is definetely a Helene Fischer-Schlager
        '''
        st.balloons()

    if res.status_code != 200:
        '''
        Analysis was not successful. Please try again...
        print(res.status_code, res.content)
        '''
