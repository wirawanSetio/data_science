import streamlit as st
import matplotlib.pyplot as plt
from PIL import Image
import pandas as pd
def waktu(df):
    
    st.subheader('Waktu')
    st.write('terdapat peningkatan yang **sangat signifikan** pada **jam 10 pagi sd sekitar 5 sore**')
    st.write('coba **pilih data** dari **pukul 10 hingga 17** untuk dimengerti ada apa pada rentang waktu tersebut.')
    df.sort_values('time',ascending=False,inplace=True)
    time = df['hour'].value_counts()
    
    st.line_chart(time)
    
    st.write('seberapa signifikan peningkatannya ? dengan Confidence 95%')
    st.write("- H0: frequensi kecelakaan dari pukul 10 sd 17 = 185")
    st.write("- H1 : frequensi kecelakaan dari pukul 10 sd 17 != 185")
    
    image = Image.open("./public/image/perjam.png")
    st.image(image)
    st.write('Hipotesis null telah ditolak, maka kenaikan kasus tersebut signifikan')


def lokasi(df):
    st.subheader('Lokasi')
    st.write('negara bagian jumlah kecelakaan diatas rata-rata')
    st.write("'Utah', 'Pennsylvania', 'North Carolina', 'Arizona', 'Alabama','California', 'Kentucky', 'New York', 'Louisiana', 'Ohio',Wisconsin', 'Illinois', 'Nevada'")
    st.write('gunakan data dengan **negara bagian** yang memiliki **kasus diatas rata-rata** untuk perhitungan lebih lanjut')
   # gunakan value count untuk melihat frequensi pada setiap negara bagian
   # negara bagian yang kejadiannya diatas rata-rata adalah 'Utah', 'Pennsylvania', 'North Carolina', 'Arizona', 'Alabama','California', 'Kentucky', 'New York', 'Louisiana', 'Ohio',Wisconsin', 'Illinois', 'Nevada'
    fig, ax = plt.subplots() 
    data = df['state'].value_counts().sort_values(ascending=False)
    ax.bar(data.index,data)
    plt.setp(ax.xaxis.get_majorticklabels(), rotation=90)
    fig.set_figheight(10)
    fig.set_figwidth(15)
    st.pyplot(fig)


def population_area(df):
    st.write('dari **negara bagian** tersebut, dicari mana populasi area yang sering terjadi kecelakaan')
    fig, ax = plt.subplots() 
    data = df['pop_area'].value_counts().sort_values(ascending=False)
    ax.bar(data.index,data)
    plt.setp(ax.xaxis.get_majorticklabels(), rotation=90)
    st.pyplot(fig)
    st.write('dari **populasi area** pada area **Rural** memiliki kasus yang lebih banyak')

def cuaca(df):
    st.subheader('Lokasi')
    st.write('ketika dilihat dari jumlah kejadian kecelakaan, kecelakaan terjadi pada cuaca **Cerah**')
    data = pd.crosstab(df['hour'],df['weather'])
    fig, ax = plt.subplots() 
    ax.plot(data)
    fig.set_figheight(10)
    fig.set_figwidth(15)
    ax.legend(data.columns)
    st.pyplot(fig)

def pengemudi(df):
    data = pd.crosstab(df['hour'],df['d_impairment'])
    
    st.subheader('Prilaku pengemudi')
    st.write('pengemudi yang dalam keadaan **normal** dan orang-orang terpengaruh **alkohol atau obat-obatan** menjadi urutan ke-2 ')
    
    fig, ax = plt.subplots() 
    ax.plot(data)
    plt.setp(ax.xaxis.get_majorticklabels(), rotation=90)
    fig.set_figheight(10)
    fig.set_figwidth(15)
    ax.legend(data.columns)
    
    st.pyplot(fig)

def isSpeeding(df):
    data = df.groupby('hour')['speed'].mean()
    st.write("jika dilihat dari kelompok tiap jam, adanya **peningkatan drastis** pada pukul 14 hingga 17")
    fig, ax = plt.subplots() 
    ax.plot(data)
    plt.setp(ax.xaxis.get_majorticklabels(), rotation=90)
    fig.set_figheight(10)
    fig.set_figwidth(15)
    st.pyplot(fig)

def pandangan(df):
    data = pd.crosstab(df['month'],df['light_condition'])
    
    st.subheader('Pandangan Dari Pengemudi')
    st.write('jika ditinjau pada setiap bulan, ada trend dimana dari \
             bulan **Oktober** hingga **Desember** adanya peningkatan\
             kecelakaan pada saat gelap diikuti berkurangnya pergerakan pada siang hari dan\
             pada bulan **Januari** terdapat banyak angka kecelakaan pada malam hari')
    
    fig, ax = plt.subplots() 
    ax.plot(data)
    plt.setp(ax.xaxis.get_majorticklabels(), rotation=90)
    fig.set_figheight(10)
    fig.set_figwidth(15)
    ax.legend(data.columns)
    
    st.pyplot(fig)
    
def terang_gelap_kecep(df):
    st.write("jika dilihat pada **setiap bulannya**, adanya\
            rata-rata yang perbedaanya cukup tinggi disaat **jalan gelap**\
            pada bulan **Januari ,Oktober ,November ,dan Desember**, dan \
            pada jalanan yang terang terdapat peningkatan kecepatan pada \
            bulan **April ,Mei ,dan September**")
    selected_dark = df.query("light_condition == 'Dark'")
    selected_daylight = df.query("light_condition == 'Daylight'")

    fig,ax = plt.subplots(1,2,figsize=(20,6))
    fig.suptitle("Rata-Rata Kecepatan Terhadap Penerangan Jalan",fontsize=20, y=1.02)


    ax[0].plot(selected_dark.groupby('month')['speed'].mean())
    ax[0].set_title('Gelap Setiap Bulan',fontsize= 16)

    ax[1].plot(selected_daylight.groupby('month')['speed'].mean())
    ax[1].set_title('Terang Setiap Bulan',fontsize= 16)
    
    st.pyplot(fig)
    
    st.write("kita uji seberapa signifikan peningkatan rata-rata kecepatan **April ,Mei ,dan September** pada jalanan yang terang dengan **Confidence interval 90%**")
    st.write("- H0 : Rata-rata kecepatan jalanan terang pada bulan **April ,Mei ,dan September** <= rata-rata jalanan siang keseluruhan")
    st.write("- H1 : Rata-rata kecepatan jalanan terang pada bulan **April ,Mei ,dan September** > rata-rata jalanan siang keseluruhan")
    
    image = Image.open("./public/image/daylight.png")
    st.image(image)
    st.write('Hipotesis null telah ditolak, rata-rata kecepatan tersebut signifikan')

def permukaan_jalan(df):
    st.subheader('Permukaan Jalan')
    st.write('**Rata-rata kecepatan** pengendara yang mengalami kecelakaan,antara **jalan berbelok dan lurus hampir sama**. juga jika dilihat dari kontur jalan,<br> jalan dengan **kontur datar rata-rata kecepatannya hampir sama** dengan **jalan naik dan jalan turun** ')
    
    grade = df.groupby('rd_grade')['speed'].mean()
    allignment = df.groupby('rd_allignment')['speed'].mean()
    fig_1,ax_1 = plt.subplots(2,figsize=(20,9))
    ax_1[0].bar(allignment.index,allignment)
    ax_1[1].bar(grade.index,grade)
    st.pyplot(fig_1)
    
    selected_general = df.query("rd_allignment == 'Curve Right' or rd_allignment == 'Curve Left' or rd_allignment == 'Straight'")
    selected_down = selected_general.query("rd_grade == 'Downhill'")
    selected_level = selected_general.query("rd_grade == 'Level'")
    selected_up = selected_general.query("rd_grade == 'Uphill'")
    selected_crest = selected_general.query("rd_grade == 'Hillcrest'")


    st.write("jika dilihat dari bentuk jalan, ada kecenderungan **peningkatan kecepatan** pada **tikungan** dan **kontur** jalan naik dan turun, terutama pada **pukul 10 dan 15**")
    fig,ax = plt.subplots(5,2,figsize=(20,20))
    fig.suptitle("Rata-Rata Kecepatan Saat Berbelok dan Jalan Lurus Terhadap Kontur Jalan",fontsize=30, y=.94)


    ax[0,0].plot(selected_general.groupby('hour')['speed'].mean())
    ax[0,0].set_title('General Hour',fontsize= 16)

    ax[1,0].plot(selected_down.groupby('hour')['speed'].mean())
    ax[1,0].set_title('Turun Hour',fontsize= 16)

    ax[2,0].plot(selected_level.groupby('hour')['speed'].mean())
    ax[2,0].set_title('Datar Hour',fontsize= 16)

    ax[3,0].plot(selected_up.groupby('hour')['speed'].mean())
    ax[3,0].set_title('Naik Hour',fontsize= 16)

    ax[4,0].plot(selected_up.groupby('hour')['speed'].mean())
    ax[4,0].set_title('Dataran Tinggi Hour',fontsize= 16)

    ax[0,1].plot(selected_general.groupby('month')['speed'].mean())
    ax[0,1].set_title('General Month',fontsize= 16)

    ax[1,1].plot(selected_down.groupby('month')['speed'].mean())
    ax[1,1].set_title('Turun Month',fontsize= 16)

    ax[2,1].plot(selected_level.groupby('month')['speed'].mean())
    ax[2,1].set_title('Datar Month',fontsize= 16)

    ax[3,1].plot(selected_up.groupby('month')['speed'].mean())
    ax[3,1].set_title('Naik Month',fontsize= 16)

    ax[4,1].plot(selected_crest.groupby('month')['speed'].mean())
    ax[4,1].set_title('Dataran Tinggi Month',fontsize= 16)
    
    st.pyplot(fig)
    
def kesimpulan():
    st.subheader("Kesimpulan")
    st.write(" **Mengapa kecelakaan bisa terjadi ?** dari sekumpulan jawaban diatas kecelakaan terjadi pada pukul **10 hingga 17** dan diantara state yang terpilih 'Utah', 'Pennsylvania', 'North Carolina', 'Arizona', 'Alabama', \
       'California', 'Kentucky', 'New York', 'Louisiana', 'Ohio', 'Wisconsin', 'Illinois', 'Nevada' adanya kecenderungan **naiknya rata-rata kecepatan** disaat **minim pencahayaan** **naiknya rata-rata kecepatan** juga ditemukan pada **jalan tikungan tanjakan dan turunan** dan khusus pada pada bulan **Januari ,Oktober ,November ,dan Desember** naiknya jumlah kecelakaan pada tempat yang relatif gelap")