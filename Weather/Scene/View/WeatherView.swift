//
//  WeatherView.swift
//  Weather
//
//  Created by Baris on 27.06.2023.
//

import SwiftUI

struct WeatherView: View {
    var weather : ResponseBody
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}