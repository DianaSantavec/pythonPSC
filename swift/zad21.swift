let mString = "ovo j8e nek0i stri8ng sa 99mnogo karakter-a0"
var pomDict: [String: Int] = [:]
var nisti = true
for i in mString {
	let k = String ( i )
	for j in pomDict.keys {
		if k == j {
			nisti = false
			var dodatna = pomDict[j]
			if dodatna != nil {
				dodatna! += 1
				pomDict[j] = dodatna 
				}
		}
	}
	if nisti {
		pomDict[k] = 1
	}
	nisti = true
}
print (pomDict)

var sum = 0

for z in pomDict.keys {
	let pomocna = Int(z)
	if pomocna != nil {
		let dvojka = pomDict [z]
		if dvojka != nil {
			sum += dvojka!
		}
	}
}
print ( sum )
