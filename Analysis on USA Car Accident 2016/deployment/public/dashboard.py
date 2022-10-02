import streamlit as st
import matplotlib.pyplot as plt
def mapDashboard(data):
    month = st.slider('month',1,12,2) 
    # map spesifik
    st.subheader('Posisi kecelakaan setiap bulan')
    st.write(month)
 
    # jam_penjemputan = 2
    filtered_data = data[data['month']==month][['longitude','latitude']]

    # plotting map
    st.map(filtered_data)
    
def lineDashboard(data):
    
    month_1 = st.slider('month_2',1,12,2)
    st.write('Banyak kecelakaan pada bulan',month_1)
    filter_data = data[data['month'] == month_1]
    time = filter_data['hour'].value_counts()
    
    st.line_chart(time)
    

def lineDashboard_2(data):
    st.subheader('kontur jalan dan pencahayaan setiap bulan kecelakaan')
    option_grade = st.selectbox(
     'choose contur',
     ('Uphill', 'Downhill', 'Level'))
    option_light = st.selectbox(
     'choose lighting',
     ('Dark', 'Daylight'))
    st.write(option_light)
    selected_dark = data[(data['rd_grade'] == option_grade)&(data['light_condition'] == option_light)]
    line = selected_dark.groupby('month')[['speed']].mean()
   
    fig, ax = plt.subplots() 
    ax.plot(line)
    plt.setp(ax.xaxis.get_majorticklabels(), rotation=90)
    fig.set_figheight(10)
    fig.set_figwidth(15)
  
    
    st.pyplot(fig)
    
def lokasiDashboard_3(df):
    st.subheader('Jumlah kecelakaan pada setiap State')
   # negara bagian yang kejadiannya diatas rata-rata adalah 'Utah', 'Pennsylvania', 'North Carolina', 'Arizona', 'Alabama','California', 'Kentucky', 'New York', 'Louisiana', 'Ohio',Wisconsin', 'Illinois', 'Nevada'
    fig, ax = plt.subplots() 
    data = df['state'].value_counts().sort_values(ascending=False)
    ax.bar(data.index,data)
    plt.setp(ax.xaxis.get_majorticklabels(), rotation=90)
    fig.set_figheight(10)
    fig.set_figwidth(15)
    st.pyplot(fig)
