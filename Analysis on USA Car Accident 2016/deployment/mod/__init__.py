
def generalize_lighting(df):
    dark_list = [ 'Dark – Lighted', 'Dark – Not Lighted', 'Dusk',
       'Dark – Unknown Lighting']
    result = []
    for val in df['light_condition']:
        if val in dark_list:
            result.append('Dark')
        else:
            result.append(val)

    df['light_condition'] = result

def generalize_distract(df):
    phone_list = ['While Talking or Listening to Cellular Phone','While Manipulating Cellular Phone','Other Cellular Phone Related']
    dist_list = ['By a Moving Object in Vehicle','Lost In Thought/Day Dreaming',
                'While Adjusting Audio or Climate Controls','Distraction/Inattention','Eating or Drinking','By Other Occupant(s)',
                'While Using Other Component/Controls Integral to Vehicle','Looked But Did Not See', 'Other Distraction', 
                'While Using or Reaching For Device/Object Brought Into Vehicle',
                'Distracted by Outside Person, Object or Event',
                'Inattention (Inattentive), Details Unknown',
                'Distraction (Distracted), Details Unknown','Smoking Related','Careless/Inattentive'] 
    result = []
    for val in df['d_distraction']:
        if val in phone_list:
            result.append('Phone Related')
        elif val in dist_list:
            result.append('Activity While Driving')
        else:
            result.append(val)

    df['d_distraction'] = result 

def generalize_speeding(df):
    yes_list = ['Yes, Exceeded Speed Limit', 'Yes, Racing',  'Yes, Specifics Unknown', 'Yes, Too Fast for Conditions']
    result = []
    for val in df['is_speeding']:
        if val  in yes_list:
            result.append('Yes')
        else:
            result.append('No')

    df['is_speeding'] = result
    
def split_time(df,pd):
    df['month'] = pd.to_datetime(df['time']).dt.month
    df['day'] = pd.to_datetime(df['time']).dt.day
    df['hour'] = pd.to_datetime(df['time']).dt.hour
    
def above_avg_state(df):
    state_mean = df['state'].value_counts().mean()
    s_list = []
    for i,v in df['state'].value_counts().items():
        if v > state_mean:
            s_list.append(i)
    return df.query("state in @s_list and pop_area != 'Trafficway Not in State Inventory'")