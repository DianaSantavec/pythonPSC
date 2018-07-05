/*class Osoba {
	var ime: String = ""
	var prezime: String = ""
	var starost: Int = 0
	var pisutnost: Bool = false
}*/

class Osoba {
	var ime: String
	var prezime: String
	var starost: Int
	var prisutnost: Bool

	init(ime: String, prezime: String, starost: Int, prisutnost: Bool) {
		self.ime = ime
		self.prezime = prezime
		self.starost = starost
		self.prisutnost = prisutnost
	} 
	func ispisi () -> String {
		var prisutan = "prisutan"
		if !prisutnost {
			prisutan = "nije" + prisutan
		}
		return "Osoba: \(ime) \(prezime), starosti: \(starost) " + prisutan
	}
}

let o1 = Osoba(ime: "Marko", prezime: "Markovic", starost: 20, prisutnost: false)

print(o1.prezime, o1.starost)

print (o1.ispisi())


enum StraneSveta {
	case sever
	case jug
	case istok
	case zapad
}
let ss = StraneSveta.jug

if ss == .istok {
	print ("Jeste istok")
}
else{
	print ("nije istok")
}



func saberi(a: Int, b: Int) -> Int {
	return a + b
}
print (saberi(a: 10, b: 20))

func saberi2(spoljnoA a: Int, spoljnoB b: Int) ->Int {
	return a + b
}

print (saberi2(spoljnoA: 10, spoljnoB: 20)) 

funct saberi3(_ a: Int , _ b: Int) -> Int {
	return a+b
}

funct saberi4 (a: Int, b: Int = 15) -> Int {
	return a + b
}

print (saberi3 ( 10, 20 ) )
print (saberi4 ( a: 20, b: 33 ) )
