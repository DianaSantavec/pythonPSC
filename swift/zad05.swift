import Foundation
let niz = [1, 3.2, 8, 4, 9, 5.2, 3.1]
var niz2: [Double] = []
var niz3: [Double] = []

func ceo (a: Double) -> Bool {
	let help = Int (a)
	let dub = Double(help)
	if dub == a {
		return true
	}
	else {
		return false
	}
}	
var brojac = 0
for i in niz {
	if ceo (a: i)  == true {
		niz2 += [i]
	}
}
print (niz2)

for z in niz2 {
	var salje: Double
	salje = sqrt (z)
	if ceo (a: salje) == true {
		niz3 += [z]
	}
}

print (niz3)
