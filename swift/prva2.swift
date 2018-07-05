var skup = Set<Int>()
skup.insert(5)
skup.insert(7)
skup.insert(15)
skup.insert(17)
skup.insert(1)
skup.insert(7)

print(skup)

if skup.contains (17) {
	print("Sadrzi")
}
else {
	print ("ne sadrzi")
}

skup.remove(1)
print ( skup )


var air: [String: String] = ["YYZ": "Toronto gnsfk", "Dub": "Dublin"]
var kursnalista = ["EUR" : 118.12, "USD" : 98.123] // ne mora [String:Double]

print ( kursnalista)

kursnalista["CHF"] = 102.1237

print (kursnalista)

