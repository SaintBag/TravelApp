//
//  RecomendedRestaurantsView.swift
//  TravelApp
//
//  Created by Sebastian on 10/11/2022.
//

import SwiftUI

struct RecomendedRestaurantsView: View {
    
    let restaurants: [Restaurants] = [
        .init(restaurantName: "Tempura Bar", restaurantImage: "tempura", restaurantType: "Japanese", place: "Cracow, Poland"),
        .init(restaurantName: "Baldon", restaurantImage: "fool", restaurantType: "Italian", place: "Berlin, Germany"),
        .init(restaurantName: "FigTruck", restaurantImage: "figa", restaurantType: "Street Food", place: "Siena, Italy")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Recommended Restaurants")
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("See all")
                        .foregroundColor(Color(.label))
                })
                .font(.system(size: 16, weight: .semibold))
            }.padding(.horizontal)
                .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(restaurants.shuffled(), id: \.self) { restaurant in
                        HStack(spacing: 8.0) {
                            Spacer()
                            Image(restaurant.restaurantImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipped()
                                .cornerRadius(4)
                                .padding(.leading, 6)
                                .padding(.vertical, 6)
                            Spacer()
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(restaurant.restaurantName)
                                    Spacer()
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.gray)
                                    }
                                }
                                
                                HStack {
                                    Image(systemName: "star.fill")
                                    Text("4.5 • \(restaurant.restaurantType) • $$")
                                }
                                Text(restaurant.place)
                            }.font(.system(size: 16, weight: .semibold))
                            Spacer()
                        }
                        .frame(width: 350)
                        .background(Color(.init(white: 1, alpha: 0.85)))
                        .cornerRadius(15)
                        .shadow(color: .init(.sRGB, white: 0.8, opacity: 1.0), radius: 6)
                        .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct RecomendedRestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendedRestaurantsView()
        MainView()
    }
}
