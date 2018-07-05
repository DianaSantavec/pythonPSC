import Foundation

print ("unesi kljucnu rec")
let str = readLine(strippingNewline: true)!
var link = "https://omdbapi.com/?apikey=9dbcc5eb&s=\(str)" //interpolacija stringova
var 
print (link)
/*
if let url = URL(string: link) {
	do{
		let content = try String(contentsOf: url, encoding: .utf8)
	}catch {
		print ("eror")
	}
}
*/
struct Result: Codable{
	var Title: String
	var Year: String
}
struct Results: Codable {
	var Search: [Result]
}

if let jsonData = content.data(using: .utf8) {
	let filmovi = try? JSONDecoder().decode(Movies.self, from: jsonData)
	if let m = movies {
		print (m)
	}
	else {
		print ("NERADI");
	}

}
