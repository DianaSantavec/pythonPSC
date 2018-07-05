let niz:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func dalijeparan (n : Int) -> Bool{
	return 2 * (n/2) == n
}


var noviNiz: [Int] = [] // var ... =[Int]()

for i in niz {
	let l = (i/2) * 2 == i // l je true ili false
	if l {
		noviNiz+=[i]
	}
}

noviNiz=[]

for n in niz{
	if dalijeparan (n: n){
		noviNiz+=[n]	
	}
}

print(niz,noviNiz)

