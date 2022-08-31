from fastapi import FastAPI, UploadFile, File
from starlette.responses import Response

# from working_functions import reading_audiofile, spectogram,
#                           get_add_features, add_features_as_array_for_CNN

app = FastAPI()

@app.get("/")
def index():
    return {"status": "ok"}

@app.post('/upload_wav')
async def receive_wav(uploaded_wav: UploadFile=File(...)):
    ### Receiving the wav file
    wav_to_analyze = await uploaded_wav.read()

    ### now performing all the other cruelties to the wave file
    x, sr = reading_audiofile(wav_to_analyze)
    spectogram = spectogram(x, sr)
    mfcc, specbandwith, spectralcentroid, chroma, zerocrossrate, spectralroff = get_add_features(x,sr)

    ### !!!! normalize those features ? Yes think so ! How? ===
    feat_array = np.concatenate(mfcc, specbandwith, spectralcentroid, chroma,
                                zerocrossrate, spectralroff)

    ###  now make predictions!
    predict_cnn = model_cnn.predict(spectogram)
    predict_ml = model_ml.predict(feat_array)

    ### Responding with the classification
    return Response(class_cnn=predict_cnn, class_ml=predict_ml)
