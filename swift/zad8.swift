import Foundation

let jsonString = "{\"name\": \"Luke Skywalker\",\"height\": \"172\",\"mass\": \"77\",\"hair_color\": \"blond\", \"skin_color\": \"fair\", \"eye_color\": \"blue\", \"birth_year\": \"19BBY\",\"gender\": \"male\"}"

struct Luke: Codable {
	var name: String
	var height: String
	var mass: String
	var hair_color: String
	var skin_color: String
	var eye_color: String
	var birth_year: String
	var gender: String
}

let filename = FileManager.default.homeDirectoryForCurrentUser.appendingPathComponent("file.json")
print (filename)


/*
do {
try jsonString.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
} catch {
	print ("greska")
}

//ovde ucitati

if let decode = ucitano.data(using: .utf8) {
	let Lu = try? JSONDecoder().decode(Luke.self, from: decode)
}
print (Lu!.name, Lu!.height, Lu!.mass, Lu!.hair_color, Lu!.skin_color, Lu!.eye_color, Lu!.birth_year, Lu!.gender)
*/


