//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Pongpat Weesommai on 9/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Weekly Forecast").foregroundStyle(Color.blue).font(.system(size: 32, weight: .black, design: .rounded))
        ScrollView(.horizontal) {
            HStack(spacing: 24) {
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                
                DayForecast(day: "Wed", isRainy: true, high: 50, low: 45)
                
                DayForecast(day: "Thu", isRainy: true, high: 45, low: 35)
                
                DayForecast(day: "Fri", isRainy: false, high: 60, low: 40)
            }.padding(24)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
