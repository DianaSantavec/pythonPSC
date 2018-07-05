func saberi ( a: Int, b: Int) -> Int {
	return a + b
}

func oduzmi ( a: Int, b:Int) -> Int {
	return a - b
}

func operacija ( a: Int, b: Int, f: (Int, Int) -> Int) -> Int {
	return f(a, b)
}

func pomnozi ( x: Int, y: Int) -> Int {
	return y * x
}
func ( a: Int, b: Int) -> Int {
	return a / b
}

print (operacija (a: 5,b: 23, f: saberi))


print (operacija(a: 10, b: 4, f: {
				(x: Int, y: Int) -> Int in
				return x - y
				} ))



let niz2_1 = niz.sorted(by: { return $0.ocena > $1.ocena})
print (niz2_1)

let niz3 = niz2.filter({
	(u: Ucenik) -> Bool in
	return u. ocena >= 4.5
})
print (niz3)

let niz4 = niz2.filter ({$0.ocena >= 4.8})
print (niz4)
