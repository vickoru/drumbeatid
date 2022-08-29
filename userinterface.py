import streamlit as st


'''
# User Interface for Drum Beat ID

### Select WAV-File

'''

st.set_option('deprecation.showfileUploaderEncoding', False)
uploaded_file = st.file_uploader("Choose a WAV file", type="csv")

if uploaded_file is not None:
    data = pd.read_csv(uploaded_file)
    st.write(data)


if st.button('Analyze Wave-File'):
    # print is visible in the server output, not in the page
    '''
    ## Analysis of Wave-File performed ! 🎉

    ### Result: This song is definetely a Helene Fischer-Schlager
    '''
    st.balloons()

    #st.write('Analysis of Wave-File performed ! 🎉')
    #st.write('Result: This song is definetely a Helene Fischer-Schlager')
else:
    st.write('No Analysis performed')
