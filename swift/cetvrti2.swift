import Foundation
let jsonString = "{\"ime\":\"Ana\",\"starost\":16,\"prosecnaOcena\": 4.91:}"   // \" jer su navodnici ukljuceni u string, iz dat ne bi bio problem

struct Ucenik: Codable {
	var ime: String
	var starost: Int
	var prosecnaOcena:Double 
}



if let jsonData = jsonString.data(using: .utf8) {
	let u1 = try? JSONDecoder().decode(Ucenik.self, from: jsonData)

	print(u1!.ime, u1!.starost, u1!.prosecnaOcena)
	
}

if
