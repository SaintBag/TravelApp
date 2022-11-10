//
//  RecomendedPlacesView.swift
//  TravelApp
//
//  Created by Sebastian on 10/11/2022.
//

import SwiftUI

struct RecomendedPlacesView: View {
    let recommendedPlaces: [RecommendedPlaces] = [
        .init(placeName: "Cracow", countryName: "Poland", imageName: "one"),
        .init(placeName: "Berlin", countryName: "Germany", imageName: "travel"),
        .init(placeName: "Paris", countryName: "France", imageName: "three")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Recommended Places")
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 16, weight: .semibold))
            }.padding(.horizontal)
                .padding(.top)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(recommendedPlaces.shuffled(), id: \.self) { place in
                        VStack(alignment: .leading, spacing: 0) {
                            Image(place.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .cornerRadius(4)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 6)
                            
                            Text(place.placeName.uppercased())
                                .font(.system(size: 16, weight: .semibold))
                                .padding(.horizontal, 12)
                            
                            Text(place.countryName.uppercased())
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(Color(.darkGray))
                                .padding(.horizontal, 12)
                                .padding(.bottom, 6)
                        }
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: .init(.sRGB, white: 0.8, opacity: 1.0), radius: 6)
                        .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}


struct RecomendedPlacesView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendedPlacesView()
        MainView()
    }
}
