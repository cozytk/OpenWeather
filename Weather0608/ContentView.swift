//
//  ContentView.swift
//  Weather0608
//
//  Created by taekkim on 2023/06/08.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var weatherFetcher: WeatherFetcher

    var body: some View {
        ScrollView(.horizontal) {
            VStack(alignment: .leading) {
                HStack {
                    ForEach(weatherFetcher.weatherModel.list) { list in
                        VStack {
                            Text(list.weather[0].main.rawValue)
                            Text(list.weather[0].description.rawValue)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
