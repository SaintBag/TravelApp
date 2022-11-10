//
//  ExtraView.swift
//  TravelApp
//
//  Created by Sebastian on 10/11/2022.
//

import SwiftUI

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
                         .shadow(color: .init(.sRGB, white: 0.8, opacity: 1.0), radius: 6)
                    }
                }.padding(.horizontal)
            }
        }
    }
}


struct ExtraView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraView()
        MainView()
    }
}
