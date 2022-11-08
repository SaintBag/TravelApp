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
                ScrollView(.horizontal, showsIndicators: false) {
                    Spacer()
                    HStack(spacing: 8) {
                        ForEach(0..<15, id: \.self) { num in
                            VStack(spacing: 8) {
                                Spacer()
                                    .frame(width: 50, height: 50)
                                    .background(Color(.orange))
                                    .cornerRadius(.infinity)
                                    .shadow(color: .gray, radius: 5)
                                Text("CLICK")
                                    .font(.system(size: 12, weight: .semibold))
                            }
                           
                        }
                    }.padding(.horizontal)
                }
            }.navigationTitle("Discover AHOJ!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
