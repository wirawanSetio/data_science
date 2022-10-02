import streamlit as st
import requests
# Data structure
import json
import numpy as np
import pandas as pd
# preprocessing
import re
import string
import html
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize

#Input Inference
st.title("Prediction Sentiment From the Indonesian Tweet")
new_data = st.text_input('Movie title', 'Input tweet comment here ...')


# preprocessor

# NLTK Stopping word filter
stpwds_id = list(set(stopwords.words('indonesian')))
stpwds_id = stpwds_id + ['jd','oh','hm','wah','bu','ehh','aahshshahaha','aam','aat','ab','yang','nih','tidak','orang',
                         'ya','nya','nak','je','amp','sih','gue','tau','banget','deh','the','hati','sa','suka','iya','anak','oi'] # add oh and jd for stopping word list updated while doing EDA


# retrieve dictionary for indonesian slang
slang_dict = pd.read_csv('https://raw.githubusercontent.com/okkyibrohim/id-multi-label-hate-speech-and-abusive-language-detection/master/new_kamusalay.csv',names=['slang','trans'],encoding='cp1252')
# define slang dictionary 
slang_dict = dict(zip(list(slang_dict.slang), list(slang_dict.trans)))

#all preprocessor at once
def clean_final(new_text):
    new_text = re.sub(r"2\b", "", new_text) #remove repeated word with 2 like jalan2 or makan2
    new_text = re.sub(r"<([A-Z])\w+>", "", new_text) #remove weird htl texttag
    new_text = html.unescape(new_text)# to convert HTML Entities
    new_text = re.sub(r"\\n", "", new_text) #remove new line markdown
    new_text = re.sub(r"\\\w?\d?\w+", "", new_text) #remove utf-8
    new_text = re.sub("@[A-Za-z0-9_.]+","", new_text)
    new_text = new_text.replace("RT USER: ","") # remove RT USER:
    new_text = re.sub("#[A-Za-z0-9_]+","", new_text) #Remove hashtag
    new_text = re.sub("( URL)+|URL |URL","", new_text) # remove URL
    new_text = new_text.translate(str.maketrans("","",string.punctuation)) # remove punctuation
    new_text = new_text.lower() # make Documents lower case
    new_text = re.sub("[^A-Za-z\s']","", new_text) # remove everything beside words
    new_text = re.sub(r"(\w)\1\1+", r"\1", new_text) # remove consecutive letter in word
    # remove Indonesian signature laughter
    new_text = re.sub(r"|[wk]*(?:wk|kw)[wk]|\b[ha]*(?:ha|ha)[ha]*\b|\b[wa]*(?:ka|ka)[ka]*\b","", new_text) 
    new_text = new_text.replace("'","")
    new_text = new_text.strip() # remove white space both start and end of document


    #Slang handling
    tokens = word_tokenize(new_text)
    new_list = []
    for word in tokens :
        if slang_dict.get(word) != None:
            new_list.append(slang_dict.get(word))
        else:
           new_list.append(word) 
        new_text = ' '.join(new_list)
    # stop words
    tokens = word_tokenize(new_text)
    new_text = ' '.join([word for word in tokens if word not in stpwds_id])
    # Stemming words
    # new_text = stemmer.stem(new_text)
    new_text = re.sub("yang","", new_text)
    new_text = re.sub(" sa ","", new_text)
    return new_text

# preprocess data 
new_data_clean= clean_final(new_data)
new_data_list = [[new_data_clean]]
input_data_json = json.dumps({
    "signature_name": "serving_default",
    "instances": new_data_list
})
print(new_data_clean)
# inference with live server
URL = "https://bismillah-rnn-sentiment.herokuapp.com/v1/models/rnn_sentiment:predict"
r = requests.post(URL, data=input_data_json)
res = r.json()

outputnya = int(np.argmax(res['predictions'][0]))

print(res)
if r.status_code == 200:

    if outputnya == 0:
        st.title("Neutral")  
    elif outputnya == 1:
        st.title("Positive")
    elif outputnya == 2:
        st.title("Negative")  
    else:
        st.title("something wrong")

 