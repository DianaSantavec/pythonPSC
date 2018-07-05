print ("Hello world!!!")

let n = 15
for i in 1...n{
	print(n,i)
}

let s1="Hello"
let s2=s1+"world"

print(s2)

var zbir: Int
zbir=0
print(zbir)

let z1=16
let z2=88

zbir=z1+z2
print(zbir)

let zbirSamoBrojevi="123456"
print(zbirSamoBrojevi)

let a=5
let b=12
if a<b{
	print ("manji je prvi broj")
}
else {
	print("manji je drugi broj")
}

let l1: Bool = false
var l2 = true

let niz1=[1,5,7,8,99,33]

var zbirElNiza=0

for n in niz1 {
	zbirElNiza+=n
}
print ("Zbir elemenata niza je: \(zbirElNiza)")

zbirElNiza=0
for i in 0..<niz1.count{
	zbirElNiza+=niz1[i]
}

var prazanNiz: [Int] = []
for n in niz1{
	prazanNiz+=[n]
}
print(prazanNiz)


let mojString = "Ovo je moj string"

for c in mojString {
	//let c2: String = c  ne moze jer je slovo tipa karakter
	let c2: Character = c
	print (c2)
}


let nekiBroj = "123a" // "123a"

let nB = Int(nekiBroj) // konverzija iz str u int

//print (nB) // optional (123)- mozda ce biti int  /// sa a pise nill- konverzija ne moze da se izvede
//print (nB!)

if nB != nil {
	print (nB!)
}

if let n = nB {
	print (n)
}
