//
//  EventsCategoriesView.swift
//  TravelApp
//
//  Created by Sebastian on 10/11/2022.
//

import SwiftUI

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
            HStack(alignment: .top, spacing: 20) {
                ForEach(eventsCategories, id: \.self) { eventCategory in
                    NavigationLink(
                        destination: EventsCategoriesDetailsView(),
                        label: {
                            VStack(spacing: 12) {
                            
                                Image(systemName: eventCategory.imageName)
                                    .font(.system(size: 24))
                                    .foregroundColor(.mint)
                                    .frame(width: 68, height: 68)
                                    .background(Color(.white))
                                    .cornerRadius(.infinity)
                                    .shadow(color: .gray, radius: 6)
                                Text(eventCategory.name)
                                    .font(.system(size: 20, weight: .semibold))
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                            
                            }.frame(width: 68)
                        })
                }
            }.padding(.horizontal)
        }
    }
}

struct EventsCategoriesDetailsView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<4, id: \.self) { num in
                VStack(alignment: .center ,spacing: 0) {
                    Image("one")
                        .resizable()
                        .scaledToFill()
                    Text("SMACZNEJ KAWUSI ŻYCZĘ TOBIE")
                        .font(.system(size: 16, weight: .semibold))
                        .padding()
                        
                }.viewCustomization()
                    .padding()
            }
           
            
        }.navigationBarTitle("Event Category", displayMode: .inline)
    }
}

struct EventsCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EventsCategoriesDetailsView()
            
        }
        
//                ZStack {
//                    Color.mint
//                    EventsCategoriesView()
//                }
        
                MainView()
            }
        }
