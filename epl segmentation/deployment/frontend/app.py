import streamlit as st
import requests
 
st.title("Aplikasi Pengecekan Label Pertandingan EPL")
pass_live_shot = st.number_input('pass_live_shot',value=16 )
pass_dead_shot= st.number_input('pass_dead_shot',value=2)
drib_shot= st.number_input('drib_shot',value=1)
pk= st.number_input('pk',value=0)
fk= st.number_input('fk',value=0)
pass_prog= st.number_input('pass_prog',value=50)
pass_prg_dist= st.number_input('pass_prg_dist',value=3008)
pass_tot_dist= st.number_input('pass_tot_dist',value=8811)
ground= st.number_input('ground',value=363)
low= st.number_input('low',value=72)
high= st.number_input('high',value=44)
carries= st.number_input('carries',value=462)
carr_tot_dist= st.number_input('carr_tot_dist',value=2712)
carr_prg_dist= st.number_input('carr_prg_dist',value=1445)
att_pen= st.number_input('att_pen',value=27)
press= st.number_input('press',value=190)
press_succ= st.number_input('press_succ',value=35)

# inference
URL = "https://epl-clustering.herokuapp.com/predict/eplplay"
param = {'pass_live_shot' : pass_live_shot,
         'pass_dead_shot' : pass_dead_shot,
         'drib_shot' : drib_shot,
        'pk':pk,
        'fk':fk,
        'pass_prog':pass_prog, 
        'pass_prg_dist':pass_prg_dist,
        'pass_tot_dist':pass_tot_dist,
        'ground':ground, 
        'low':low,
        'high':high,
        'carries':carries,
        'carr_tot_dist':carr_tot_dist,
        'carr_prg_dist':carr_prg_dist,
        'att_pen':att_pen,
        'press':press,
        'press_succ':press_succ}
r = requests.post(URL, json=param)
 
if r.status_code == 200:
    res = r.json()
    st.title(res['label_names'])
else:
    st.title("Unexpected Error")