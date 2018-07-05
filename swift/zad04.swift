class Ucenici {
	var ime: String
	var prezime: String
	var ocena: Float //Double?

	init ( ime: String, prezime: String, ocena: Float ) { // i:String, p:String..     ime=i, prezime = p, ocena = o
		self.ime = ime
		self.prezime = prezime
		self.ocena = ocena
	}
}
//                  i:Maerko....
let niz = [Ucenici(ime: "Prvi",prezime: "Ucenik",ocena: 4.5),Ucenici(ime: "Drugi" , prezime: "Ucenik" ,ocena: 4.33),Ucenici(ime: "Treci",prezime: "Ucenik",ocena: 5.00)]
/*
var noviNiz: [Ucenici] = []

for i in niz {
	if i.ocena >= 4.5 {
		noviNiz += [i]
	}
}

for i in noviNiz {
	for z in i+1...noviNiz.count {
		if (i.ocena > z.ocena ) {
			print("radi")
		}
	}	

}

*/
let niz2 = niz.sorted(by: {
	u1: Ucenik, u2: Ucenik) -> Bool in
		return u1.ocena > u2.ocena
})
print (niz2)
