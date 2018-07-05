import Foundation
struct Ucenik: Codable {
	var ime: String
	var starost: Int
	var prosecnaOcena: Double
}

let u1 = Ucenik(ime: "Ana Markovic", starost: 16, prosecnaOcena: 4.91) //strukture imaju defaultne inicijalizatore, samo se moraju navesti ovde svi parametr
let u2 = Ucenik(ime: "Marko Markovic", starost: 15, prosecnaOcena: 4.22)
let u3 = Ucenik(ime: "ja ja", starost: 14, prosecnaOcena: 4.00)
let encodedData = try? JSONEncoder().encode(u1)
let str = String(data: encodedData!, encoding: .utf8)



//print(String(encodedData))
print(str!)


let nizUcenika = [u1, u2, u3]

let enc = try? JSONEncoder().encode(nizUcenika)
let str2 = String(data: enc!, encoding: .utf8)
print(str2!)


