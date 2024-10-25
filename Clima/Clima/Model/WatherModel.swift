

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    let description: String
    
    var tempratureString: String {
        String(format: "%.1f", temperature)
    }
    
    //Computed properties
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 700...781:
            return "smoke"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.rain"
        default:
            return "cloud"
        }
    }
    
}
