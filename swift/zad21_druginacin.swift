import Foundation
let str = readLine ( strippingNewline: true )!
print ( "uneti string je \(str)" )

var brojac = [Character: Int] ()
for c in str {
	if let br = brojac[c] {
		brojac[c] = br + 1
	}
	else {
		brojac[c] = 1
	}
}
for (karakter, brojPoj) in brojac {
	if karakter >= "0" && karakter <= "9" {
	print ("Znak : \(karakter) se pojavio \(brojPoj) puta " )
	}
}

let cifre:  Set<Character> = ["0","1","2","3","4","5","6","7","8","9"]
for (karakter, brojaPoj in brojac {
	if cifre.contains(karakter) {
		print ("znak \(karakter)")
	}
}
