//
//  WeatherModel.swift
//  Weather0608
//
//  Created by taekkim on 2023/06/08.
//

import Foundation

// MARK: - WeatherModel
struct WeatherModel: Codable {
    var list: [WeatherList]
}

// MARK: - List
struct WeatherList: Codable, Identifiable {
    let id = UUID()
    let weather: [Weather]
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main: MainEnum
    let description: Description
    let icon: String
}

enum Description: String, Codable {
    case brokenClouds = "broken clouds"
    case clearSky = "clear sky"
    case fewClouds = "few clouds"
    case lightRain = "light rain"
    case overcastClouds = "overcast clouds"
    case scatteredClouds = "scattered clouds"
}

enum MainEnum: String, Codable {
    case clear = "Clear"
    case clouds = "Clouds"
    case rain = "Rain"
}
