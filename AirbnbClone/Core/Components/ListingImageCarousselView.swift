//
//  ListingImageCarousselView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 11/05/2024.
//

import SwiftUI

struct ListingImageCarousselView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page) // Caroussel
    }
}

#Preview {
    ListingImageCarousselView()
}
