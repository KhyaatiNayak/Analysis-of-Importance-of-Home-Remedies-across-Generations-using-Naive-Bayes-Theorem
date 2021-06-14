import pandas as pd
import xlrd
inp=input("Enter file name: ")
try:
    f=pd.read_excel(inp)
except:
    f=pd.read_csv(inp)

result=dict()                         #makes a dictionary of all possible outcomes with their counts as key  
for i in f.index:
    name=f.iloc[i,0]
    #print(name)
    result[name]=result.get(name,0)+1
#print(result)

def add_to_dict(f,s,a):               #function to count number of elemnts with specific outcome and adds it to s
    for i in f.index:
        name=f.iloc[i,0]              #value in first column for particular row
        val=f[a][i]
        s[name,a,val]=s.get((name,a,val),0)+1       #name=value in outcome column, a=column name, val=value in that row for column 'a'

s=dict()
for a in f.iloc[:,1:]:                  #calls the add_to_dict function for every column except the first column
    add_to_dict(f,s,a)                  #f is file, s is dictionary,a column name
#print(s)

for i,j,k in s:                         #caculates conditional probability for each column value given outcome
    s[i,j,k]=s[i,j,k]/result[i]
#print(s) 
 
for i in result:                        #changes the values in result dictionary from count of outcome to probability
    result[i]=result[i]/len(f.index)  
#print(result)


prediction=list()
for i in f.index:                       #enters into a row-wise loop
    prob_index=dict()                  
    m=0
    for name in result:                 #enters into a loop for every value of outcome
        prob=result[name]
        for a in f.iloc[:,1:]:          #enters into a loop where it multiplies the contional proability for each column value for that particular column
            val=f[a][i]
            key=(name,a,val)
            if key in s:
                prob*=s[key]
            else:                       #if a particular contion doesn't exsist then probablility will be multiplied with zero
                prob*=0
        prob_index[name]=prob          #adds value of P(condition/outcome) to a list
    for name in prob_index:             #this loop looks for the outcome for highest probability for particular row 
        if m:
            if m<prob_index[name]:
                prd=name                #prd saves the name of the outcome with highest probability for specific row
        else:
            prd=name
            m=prob_index[name]
    prediction.append(prd)              #will add the prediction to a list

f['Prediction']=prediction
count=0
for i in f.index:                       
    if f.iloc[i,0]==prediction[i]:      #will increase count if prediction matches with outcome for a row
        count+=1
accuracy=(count/len(f.index))*100
print(f)
print("Accuracy :",accuracy)

