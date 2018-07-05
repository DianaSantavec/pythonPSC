import Foundation
let unos = readLine ( strippingNewline: true )!
let naziviBr = ["nula","jedan","dva","tri","cetiri","pet","sest","sedam","osam","devet" ]
let nazivDes = [" ","deset" , "stotina" , "hiljada" , "milion" ] 
var ispis: [String] = []
let provera = Int(unos)
var brojac = 0
var brojac2 = 0
if provera != nil {
	var deljenje = provera!
	while deljenje >= 10 {
		let ostatak = provera! % 10
		deljenje = deljenje / 10
		ispis[brojac2]+=naziviBr[ostatak]
		brojac2 += 1
		ispis[brojac2]+=nazivDes[brojac]
		brojac += 1
	}
print (ispis)
}
else {
	print ("nije unet broj")
}
