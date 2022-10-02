from flask import Flask,jsonify,request
import pickle
import pandas as pd
# init app
app = Flask(__name__)

# open model
def open_model(model_path):
    '''helper function to load model'''
    
    with open(model_path,'rb') as model_file:
        model = pickle.load(model_file)
    
    return model

def label_permainan(label):
    if label == 0:
        return 'Efektif'
    elif label  == 1:
        return 'Kurang Efektif'
    elif label  == 2:
        return 'Lucky Play'
    elif label == 3:
        return 'Mendominasi'
    elif label  == 4:
        return 'Terdominasi'
    elif label == 5:
        return 'Under-Performed'
    else:
        return 'unknown'

def epl_inference(data,model):
    """
    input adalah : list with length 17 ---> ['pass_live_shot', 'pass_dead_shot', 'drib_shot', 'pk', 'fk',
       'pass_prog', 'pass_prg_dist', 'pass_tot_dist', 'ground', 'low', 'high',
       'carries', 'carr_tot_dist', 'carr_prg_dist', 'att_pen', 'press',
       'press_succ']
       
    output : predicted class : (idx, label)
    
    """
    
    columns = ['pass_live_shot', 'pass_dead_shot', 'drib_shot', 'pk', 'fk',
       'pass_prog', 'pass_prg_dist', 'pass_tot_dist', 'ground', 'low', 'high',
       'carries', 'carr_tot_dist', 'carr_prg_dist', 'att_pen', 'press',
       'press_succ']
    
    df = pd.DataFrame([data])
    df.columns = columns
    res = model.predict(df)
    return res[0], label_permainan(res[0])

# load model

model_epl_label = open_model("epl_play_model.pkl")

@app.route("/")
def home():
    # response = jsonify(greeting='Hello From The World !')
    return "<h!>EPL Play Patern</h1>"

@app.route('/predict/eplplay',methods= ['POST'])
def titanic_predict():
    args = request.json
    pass_live_shot = args.get('pass_live_shot')
    pass_dead_shot= args.get('pass_dead_shot')
    drib_shot= args.get('drib_shot')
    pk= args.get('pk')
    fk= args.get('fk')
    pass_prog= args.get('pass_prog')
    pass_prg_dist= args.get('pass_prg_dist')
    pass_tot_dist= args.get('pass_tot_dist')
    ground= args.get('ground')
    low= args.get('low')
    high= args.get('high')
    carries= args.get('carries')
    carr_tot_dist= args.get('carr_tot_dist')
    carr_prg_dist= args.get('carr_prg_dist')
    att_pen= args.get('att_pen')
    press= args.get('press')
    press_succ= args.get('press_succ')
    
    new_data =   [pass_live_shot, pass_dead_shot, drib_shot, pk, fk,
       pass_prog, pass_prg_dist, pass_tot_dist,ground, low, high,
       carries, carr_tot_dist, carr_prg_dist, att_pen, press,
       press_succ]
    idx,label = epl_inference(new_data,model_epl_label)
    
    response = jsonify(result=str(idx),label_names = label)
    return response

# Jika deploy ke heroku , komen baris dibawah
app.run(debug=True)