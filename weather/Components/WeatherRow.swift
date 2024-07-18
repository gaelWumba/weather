//
//  WeatherRow.swift
//  weather
//
//  Created by gael on 18/07/2024.
//

import SwiftUI

struct WeatherRow: View {
    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: logo)
                .font(.title2)
                .frame(width: 20, height: 20)
                .padding()
                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.888))
                .clipShape(Circle()) // Utilisation de clipShape plutôt que cornerRadius pour un cercle
            
            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.caption)
                
                Text(value)
                    .bold()
                    .font(.title)
            }
        }
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(logo: "sun.max", name: "Temperature", value: "28°C") // Exemple de valeurs pour la prévisualisation
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
