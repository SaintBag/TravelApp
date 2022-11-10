//
//  ContentView.swift
//  TravelApp
//
//  Created by Sebastian on 08/11/2022.
//

import SwiftUI

struct MainView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.green, Color.mint]), startPoint: .trailing, endPoint: .topLeading)
                    .ignoresSafeArea()
                Color.white
                    .offset(y: 400)
                
                ScrollView {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Quo Vadis? SearchBar place")
                        Spacer()
                            
                    }.font(.system(size: 18, weight: .semibold))
                        .padding(8)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .background(Color(.init(white: 1, alpha: 0.2)))
                        .cornerRadius(16)
                        .padding(16)
                    EventsCategoriesView()
                    VStack {
                        RecomendedPlacesView()
                        RecomendedRestaurantsView()
                        ExtraView()
                    }.background(Color.white)
                        .cornerRadius(18)
                        .padding(.top, 24)
                }
            }.navigationTitle("AHOJ!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
