#import read_dat as read
import random

def read_dat ():
    "reads elements from file"
    f = open ('dictionary.txt')
    str = []
    for i in f:
        str.append(i)
        #str[0].rstrip()
    #print (str)
    return str

def choose (ucitano):
    #print (ucitano)
    number_elements = len (ucitano)
    #print (number_elements)
    random_el = random.choice (ucitano)
    #print (random_el)
    return random_el

def underline (random_el):
    lenght = len (random_el)-1
    line = []
    for i in range (lenght):
        line.append('_')
    print(line)
    return line

def my_find (user, line, random_el, soloved):
    brojac = 0
    for i in random_el:
        if user == i:
            line[brojac]= user
            soloved+=1
            ret = True
        brojac+=1
    return ret, soloved
            


ucitano = read_dat ()
random_el= choose(ucitano)
line = underline ( random_el)
nr_lives = 6
wrong = ""
soloved = 0

while nr_lives > 0 :
    if soloved == len(random_el)-1:
            break
    print (wrong)
    user=input('unesi slovo:')
    bol, soloved = my_find (user, line, random_el, soloved)
    finded2 = wrong.find(user) 
    if bol == False :
        nr_lives-=1
        wrong= wrong + user
        print (line)
        print(nr_lives)
        if nr_lives == 0:
                print('You lose')
                break
    else:
        if finded2 != -1:
            print ('vec ucitano')
        else:
            print (line)
            print (nr_lives)
            print (soloved)


        
