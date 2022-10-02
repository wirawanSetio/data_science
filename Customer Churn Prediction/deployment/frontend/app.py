import streamlit as st
import requests
import json
import pandas as pd
import pickle
# from sklearn.preprocessing import StandardScaler,OneHotEncoder,OrdinalEncoder
# from sklearn.compose import ColumnTransformer
 
st.title("Prediction App of Customer Churn Status")
partner = st.selectbox('is customer has partner ?',["Yes","No"] )
dependents = st.selectbox('is dependents to other ?',["Yes","No"] )
tenure= st.number_input('how long he has been a customer ?',value=1)
multiplelines= st.selectbox('is customer having multiplelines ?',["Yes","No phone service","No"] )
internetservice= st.selectbox('is customer having internet service ?',["Fiber optic","DSL","No"] )
onlinesecurity= st.selectbox('is customer having online security ?',["Yes","No internet service","No"] )
onlinebackup= st.selectbox('is customer having online backup ?',["Yes","No internet service","No"] )
deviceprotection= st.selectbox('is customer having device protection ?',["Yes","No internet service","No"] )
techsupport= st.selectbox('is customer having techsupport ?',["Yes","No internet service","No"] )
streamingtv= st.selectbox('is customer having streming tv ?',["Yes","No internet service","No"] )
streamingmovies= st.selectbox('is customer having streming movies ?',["Yes","No internet service","No"] )
contract= st.selectbox('contract type ?',["Month-to-month","Two year","One year"] )
paymentmethod= st.selectbox('payment method ?',["Electronic check","Credit card (automatic)","Mailed check"] )
monthlycharges= st.number_input('monthly charges',value=100.00)

# preprocessor
preprocess = pickle.load(open("preprocess_data.pkl", "rb"))

# Convert to dataframe

new_data = {'partner': partner,
         'dependents': dependents,
         'tenure' : tenure,
         'multiplelines' :multiplelines,
         'internetservice' : internetservice,
         'onlinesecurity' : onlinesecurity,
         'onlinebackup': onlinebackup,
         'deviceprotection': deviceprotection,
         'techsupport' : techsupport,
         'streamingtv' :streamingtv,
         'streamingmovies' : streamingmovies,
         'contract' : contract,
         'paymentmethod' : paymentmethod,
         'monthlycharges' : monthlycharges
         }
new_data = pd.DataFrame([new_data])
new_data = preprocess.transform(new_data)
new_data = new_data.tolist()

# inference with live server
URL = "http://milestone-telco-churn-backend.herokuapp.com/v1/models/telco_churn_model:predict"
param = json.dumps({
        "signature_name":"serving_default",
        "instances":new_data
    })
r = requests.post(URL, data=param)

if r.status_code == 200:
    res = r.json()
    # treshold .73
    if res['predictions'][0][0] > 0.73:
        st.title("Customer Churn")
    else:
        st.title("Customer Not Churn")
 