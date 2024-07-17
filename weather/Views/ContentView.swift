//
//  ContentView.swift
//  weather
//
//  Created by gael on 10/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack{
                Text("Paris, France")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                                
                VStack(spacing: 8){
                    Image(systemName: "sun.max.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 110, height: 110)
                    Text("31°")
                        .font(.system(size: 50, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 50)
                HStack(spacing: 20){
                    WeatherDayView(
                        dayOfWeek: "TUE",
                        imageName: "sun.max.fill",
                        temperature: 28
                    )
                    
                    WeatherDayView(
                        dayOfWeek: "WED",
                        imageName: "cloud.sun.fill",
                        temperature: 22
                    )
                    
                    WeatherDayView(
                        dayOfWeek: "THU",
                        imageName: "wind",
                        temperature: 18
                    )
                    
                    WeatherDayView(
                        dayOfWeek: "FRI",
                        imageName: "sunset.fill",
                        temperature: 22
                    )
                    
                    WeatherDayView(
                        dayOfWeek: "SAT",
                        imageName: "moon.fill",
                        temperature: 10
                    )
                }
                Spacer()
                
                Button {
                    print("tapped")
                }label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}
