import Foundation

let urlString = "https://api.openweathermap.org/data" // treba https:// jer mu po defaultu daje http, a on komunicira preko ovoga
var sadrzaj = ""
if let url = URL(string: urlString) {
	do{
		let content = try String(contentsOf: url, encoding: .utf) //sa try? vraca opcional pa treba u ispisu !
		sadrzaj = content!
	} catch {
		print ("eror")
	}
}

print (sadrzaj)

struct Coord {//bitno je da li je je veliko slovo i ovde i tamo, ali ...
	var lon: Double
	var lat: Double
}

struct SingleWeather: Codable {
	var id: Int
	var main: String
	var description: String
	var Icon: String
}

struct main: Codable {
	var temp: Double
	var pressure: Int
	var humidity: Int
	var temp_min: Double
	var temp_max: Double
}

struct Wind: Codable {
	var speed: Double
	var deg: Int
}

struct clouds: Codable {
	var all: Int
}

struc CurrentWeather: Codable {
	var coord: Cord
	var weather: [SingleWeather]
	var base: String
	var main: Main
	var visibility: Int
	var wind: Wind
	var clouds: Clouds
	var tempCelsius: Double {//dodajemo 
		return main.temp-273.15
	}
}

if let jsonData = sadrzaj.data(using: .utf8) {
	let trenutnoVreme = try? JSONDecoder().decode(CurrentWeather.self, from: jsonData)
print ("Trenutna temperatura je \(renutnoVreme!.main.tempCelsius)")
}
