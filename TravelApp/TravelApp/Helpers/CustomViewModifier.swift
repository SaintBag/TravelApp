//
//  CustomViewModifier.swift
//  TravelApp
//
//  Created by Sebastian on 10/11/2022.
//

import SwiftUI

struct CustomViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: .init(.sRGB, white: 0.8, opacity: 1.0), radius: 6)
    }
}

extension View {
    func viewCustomization() -> some View {
        modifier(CustomViewModifier()) 
    }
}
