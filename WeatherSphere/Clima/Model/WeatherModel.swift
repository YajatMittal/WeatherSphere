//
//  WeatherModel.swift
//  Clima
//
//  Created by Yajat Mittal on 2024-03-14.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    let tempMin: Double
    let tempMax: Double
    let humidity: Int
    let windSpeed: Double
    
    var temperatureString: String {
        return String(format:"%.1f", temperature)
    }
    
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
                case 701...781:
                    return "cloud.fog"
                case 800:
                    return "sun.max"
                case 801...804:
                    return "cloud.bolt"
                default:
                    return "cloud"
                }
    }
    
    var tempMinString: String {
        return String(Int(tempMin.rounded())) + "°"
    }
    
    var tempMaxString: String {
        return String(Int(tempMax.rounded())) + "°"
    }
    
    var humidityString: String {
        return String(humidity) + "%"
    }
    
    var windSpeedString: String {
        return String(Int(windSpeed.rounded())) + " m/s"
    }
    

}
