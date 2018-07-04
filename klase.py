import math as m

class PrimeGenerator:
    def __init__(self):
        self.poslednji_pr_br = 1

    def get(self):
        return self.poslednji_pr_br
    def next(self):
        for i in range (self.poslednji_pr_br+1,10000):
            check = True
            #q = 0
            #if (i == 3):
             #   self.poslednji_pr_br = 3
              #  break
            #print(float(self.poslednji_pr_br))
            for q in range (2,int(m.sqrt(float(i)))+1):
                if i%q==0:
                    print("u uslovu")
                    check = False
                    break
                print ("posle uslova")
            #print (z)
            if check:
                self.poslednji_pr_br = i
                break

br = PrimeGenerator()

for i in range (10):
    print(br.get())
    #br.get()
    br.next()