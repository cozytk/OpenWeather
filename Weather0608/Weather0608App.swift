//
//  Weather0608App.swift
//  Weather0608
//
//  Created by taekkim on 2023/06/08.
//

import SwiftUI

@main
struct Weather0608App: App {
    @StateObject var weatherFetcher = WeatherFetcher()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(weatherFetcher)
                .task {
                    do {
                        try await weatherFetcher.fetchWeather()
                    } catch {
                        print("Error Occurred: \(error)")
                    }
                }
        }
    }
}
