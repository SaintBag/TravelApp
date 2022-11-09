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
                AhojCategoriesView()
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

struct AhojCategoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Spacer()
            HStack(spacing: 16) {
                ForEach(0..<7, id: \.self) { num in
                    VStack(spacing: 16) {
                        Spacer()
                            .frame(width: 80, height: 80)
                            .background(Color(.orange))
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 6)
                        Text("CLICK")
                            .font(.system(size: 12, weight: .semibold))
                    }
                    
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
                            .frame(width: 80, height: 80)
                            .background(Color(.green))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 6)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
                    
            }
            
        }
    }
}
