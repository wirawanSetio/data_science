import streamlit as st 
import numpy as np
import pandas as pd

import mod 
import public

st.markdown("<h1 style='text-align: center;'>Analisa Kecelakaan di USA 2016</h1>", unsafe_allow_html=True)
st.markdown("<p style='text-align: center;'>By Wirawan Setio Aji <br>FTDS14</p>", unsafe_allow_html=True)

option = st.sidebar.selectbox(
    'Which number do you like best?',
     ['Dashboard','Statistics'])


url = './data/data_accident_2016.csv'

# load csv data 
@st.cache
def load_data(URL):
    list_na =  ['Unknown','Not Reported','Other'] # add missing value definition
    df_accident = pd.read_csv(URL,na_values=list_na)
    df_accident.dropna(axis=0,inplace=True)
    df_accident['f2_'] =  pd.to_datetime(df_accident['f2_'])
    df_accident.columns = ['accident_id','state','pop_area','time','light_condition',
                           'latitude','longitude','surface_cond','surface_type','rd_allignment',
                           'rd_grade','is_speeding','speed','d_distraction','d_impairment','d_vision','weather']

    df_accident = df_accident.query('speed!=997') 
    mod.generalize_distract(df_accident)
    mod.generalize_lighting(df_accident)
    mod.generalize_speeding(df_accident)
    mod.split_time(df_accident,pd)
    df_accident.reset_index(drop=True)
    return df_accident

# set data to variable `data`
data = load_data(url)


df_filter = data.query("hour >= 10 and hour <= 17 ")
above_avg_state = mod.above_avg_state(df_filter)

if option == 'Statistics':
    public.waktu(data)
    public.lokasi(df_filter)
    public.population_area(above_avg_state)
    public.cuaca(above_avg_state)
    public.pengemudi(above_avg_state)
    public.isSpeeding(above_avg_state)
    public.pandangan(above_avg_state)
    public.terang_gelap_kecep(above_avg_state)
    public.permukaan_jalan(above_avg_state)
    public.kesimpulan()
elif option == 'Dashboard':
    public.mapDashboard(above_avg_state)
    public.lineDashboard(above_avg_state)
    public.lineDashboard_2(above_avg_state)
    public.lokasiDashboard_3(df_filter)
    
    
