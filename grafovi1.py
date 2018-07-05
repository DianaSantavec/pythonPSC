import pandas as pd

class Parovi:
    def __init__ (self, x, y, br_zajednickih_suseda):
        self.x = x
        self.y = y
        self.br_zajednickih_suseda = br_zajednickih_suseda


def zajed_komsije (g,x,y):
    return (len(set(g[x]).union(g[y])))

whole = pd.read_csv ('grafovi/cleaned.csv')

s_posto = whole [int(len(whole)*0.3):int(len(whole))]

#grouped = s_posto.groupby('node_a')

#print (group)

dictionary = {}

for row in s_posto.itertuples():
    x,y = row.node_a, row.node_b
    if x not in dictionary.keys():
        dictionary[x] = []
    dictionary[x].append(y)
    if y not in dictionary.keys():
        dictionary[y] = []
    dictionary[y].append(x)

konacno = []


for i in dictionary.keys():
    for j in dictionary.keys():
        if i>j:
            br_zajednickih_suseda = 0
            for z in dictionary[i]:
                if z in dictionary[j]:
                    br_zajednickih_suseda += 1
            konacno.append(Parovi(i,j,br_zajednickih_suseda))

konacno=sorted(konacno, key = lambda a: a.br_zajednickih_suseda, reverse= True)

za_proveru = konacno[0:int (len(konacno)*0.3)] #smo sortirali po vrednostima suseda

t_posto = whole [0:int(len(whole)*0.7)]  #sa cime trebamo da porediao



dictionary_provera = {}

for row in t_posto.itertuples():
    x,y = row.node_a, row.node_b
    if x not in dictionary_provera.keys():
        dictionary_provera[x] = []
    dictionary_provera[x].append(y)
    if y not in dictionary_provera.keys():
        dictionary_provera[y] = []
    dictionary_provera[y].append(x)    

print(dictionary_provera)
print ("drugi")
#print (za_proveru.x)
brojac = 0

for i in za_proveru:
    if i.x in dictionary_provera.keys():
        if i.y in dictionary_provera[i.x]:
            brojac +=1

ukupno= len(t_posto)
print (ukupno)
print (brojac)

resenje = (brojac *100)/ukupno

print (resenje)

#for i in za_proveru:
   #if i.x in dictionary_provera.keys():
        #zajed_komsije()

brojac_unije

for i in za_proveru:
    if i.x in dictionary_provera.keys():
        brojac_unije += 1
    else:
        if i.y in dictionary_provera[i.x]:
            brojac_unije +=1

resenje2 = brojac/brojac_unije
resenje2 = (100*resenje2) / ukupno

print (resenje2)

#for i in za_proveru:
 #   if i.x in dictionary_provera.keys():
  #      brojac_unije += 1
   # else:
    #    if i.y in dictionary_provera[i.x]:
     #       brojac_unije +=1


#random

v = len(whole)
s_p = len (s_posto)
t_p = len (t_posto)

N = (v*(v-1))/2-s_p

rand_vredn =  N/t_p

print (rand)

