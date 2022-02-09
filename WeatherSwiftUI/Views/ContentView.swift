//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Марк Кулик on 09.02.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are: Latitude:\(location.latitude), Longitude:\(location.longitude)")
                } else {
                    if locationManager.isLoading {
                        LoadingView()
                    } else {
                        WelcomeView()
                            .environmentObject(locationManager)
                    }
                }
        }
        .background(Color(hue: 0.660, saturation: 1.0, brightness: 0.489))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
