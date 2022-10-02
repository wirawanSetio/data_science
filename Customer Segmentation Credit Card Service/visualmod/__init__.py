
import seaborn as sns
import matplotlib.pyplot as plt

def cat_group_viz_bar(df,column_name,val_count,size=(15,20)):
    
    length = len(df[column_name].unique())
    count_rows = (int(length/2)) if (length % 2 == 0) else (int(length/2) + 1)
    print(count_rows)
    list_val = list(df[column_name].unique())
    
    fig,ax = plt.subplots(count_rows,2,figsize=size)
    fig.suptitle(column_name,fontsize=24, y=.94)
    fig.subplots_adjust(top=.9)
    fig.subplots_adjust(hspace=.6)

    col = 0
    row = 0

    for value in list_val:
        if value != value:
            continue
        group_1 = df.query(column_name+" == @value").value_counts(val_count)

        sns.barplot(x=group_1.index,y=group_1, ax=ax[row,col])
        ax[row,col].set_title(value,fontsize= 16)
        
        if col > 0:
            col = 0
            row += 1
        else:
            col +=1