let string = "12hkh 468gbdf7s8uygjsfd87iuhj"
var br:
var sum = 0
var kar: String
for i in string {
	kar = String (i)
	let pomocna = Int(kar)
	if pomocna != nil{
		sum += pomocna!
		//print (pomocna!)
	}
}
print (sum)
