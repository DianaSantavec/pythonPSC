/*let string = "12hkh 468gbdf7s8uygjsfd87iuhj"
var sum = 0
var brojac=0
var kar: [Int]=[]
var pom: String
for i in string {
	pom = String (i)
	let pomocna = Int(pom)
	if pomocna != nil{
		kar += [pomocna!]
	}
	else{
		for c in 0 ... brojac - 1 {
			var desetica = 1
			for d in 1 ... brojac {
				desetica *= 10
			}
			sum += c * desetica
		}
		brojac=0
	}
}
print (sum)
*/

//03a stv

let s0 = "as123n opi23746 70 8 0 dgfh12"
var zbir = 0
var temp = ""
let s=s0 + " "

for c in s {
	if let c = Int(String(c)) {
		temp += String(c)	
	}
	else {
		if let p = Int(temp) {
			zbir += p
			temp = ""
		}
	}
		
}
print (zbir)
