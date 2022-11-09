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
//                        Spacer()
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

struct RecomendedPlacesView: View {
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
                    ForEach(0..<4, id: \.self) { num in
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color(.red))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 6)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
                    
            }
            
        }
    }
}

struct RecomendedRestaurantsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Recommended Restaurants")
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 16, weight: .semibold))
            }.padding(.horizontal)
                .padding(.top)
            ScrollView(.horizontal, showsIndicators: false) {
               Spacer()
                HStack(spacing: 8) {
                    ForEach(0..<4, id: \.self) { num in
                        Spacer()
                            .frame(width: 200, height: 100)
                            .background(Color(.blue))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 6)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
                    
            }
            
        }
    }
}

struct ExtraView: View {
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
                HStack(spacing: 16) {
                    ForEach(0..<4, id: \.self) { num in
                        Spacer()
                            .frame(width: 68, height: 68)
                            .background(Color(.green))
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 6)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
                    
            }
            
        }
    }
}
