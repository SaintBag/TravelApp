//
//  ContentView.swift
//  TravelApp
//
//  Created by Sebastian on 08/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                EventsCategoriesView()
                RecomendedPlacesView()
                RecomendedRestaurantsView()
                ExtraView()
            }.navigationTitle("Discover AHOJ!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct EventsCategories: Hashable {
    let name: String
    let imageName: String
}

struct EventsCategoriesView: View {
    
    let eventsCategories: [EventsCategories] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "guitars.fill"),
        .init(name: "Food", imageName: "takeoutbag.and.cup.and.straw.fill"),
        .init(name: "History", imageName: "books.vertical.fill")
        
        
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Spacer()
            HStack(alignment: .top, spacing: 16) {
                ForEach(eventsCategories, id: \.self) { eventCategory in
                    VStack(spacing: 16) {
                        
                        Image(systemName: eventCategory.imageName)
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .frame(width: 68, height: 68)
                            .background(Color(.orange))
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 6)
                        Text(eventCategory.name)
                            .font(.system(size: 12, weight: .semibold))
                            .multilineTextAlignment(.center)
                        
                    }.frame(width: 68)
                    
                }
            }.padding(.horizontal)
        }
    }
}
struct RecommendedPlaces: Hashable {
    let placeName: String
    let countryName: String
    let imageName: String
}

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
                Spacer()
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
                        .background(Color(.init(white: 1, alpha: 0.85)))
                        .cornerRadius(15)
                        .shadow(color: .gray, radius: 6)
                        .padding(.bottom)
                    }
                }.padding(.horizontal)
                
            }
            
        }
    }
}

struct Restaurants: Hashable {
    let restaurantName: String
    let restaurantImage: String
    let restaurantType: String
    let place: String
    //    let destination: RecommendedPlaces
}

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
                Spacer()
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
                        .shadow(color: .gray, radius: 6)
                        .padding(.bottom)
                    }
                }.padding(.horizontal)
                
            }
            
        }
    }
}

struct Extracts: Hashable {
    let name: String
    let imageName: String
}

struct ExtraView: View {
    let extracts: [Extracts] = [
        .init(name: "STH ONE", imageName: "person.fill"),
        .init(name: "STH TWO", imageName: "person")
    ]
    var body: some View {
        VStack {
            HStack {
                Text("WHATS NEW?")
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 16, weight: .semibold))
            }.padding(.horizontal)
                .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                Spacer()
                HStack(alignment: .top, spacing: 16) {
                    ForEach(extracts.shuffled(), id: \.self) { extract in
                        VStack(alignment: .center) {
                            Image(systemName: extract.imageName)
                                .resizable()
                                .scaledToFill()
                                .foregroundColor(.white)
                                .frame(width: 68, height: 68)
                                .background(Color(.orange))
                                .cornerRadius(.infinity)
                                
                            Text(extract.name)
                                .font(.system(size: 12, weight: .semibold))
                                .multilineTextAlignment(.center)
                            
                        }.frame(width: 68)
                         .shadow(color: .gray, radius: 6)
                         
                    }
                }.padding(.horizontal)
            }
        }
    }
}

