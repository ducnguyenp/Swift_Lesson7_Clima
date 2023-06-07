import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureFormat: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        print(conditionId)
        switch conditionId {
        case 200 ... 232:
            return "cloud.bolt"
        case 300 ... 321:
            return "cloud.drizzle"
        case 500 ... 531:
            return "cloud.rain"
        case 600 ... 622:
            return "cloud.snow"
        case 800:
            return "sun.max"
        case 800 ... 804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}
