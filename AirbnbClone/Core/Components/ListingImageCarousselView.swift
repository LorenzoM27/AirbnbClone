//
//  ListingImageCarousselView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 11/05/2024.
//

import SwiftUI

struct ListingImageCarousselView: View {
    
    let listing: Listing
    
    
    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page) // Caroussel
    }
}

#Preview {
    ListingImageCarousselView(listing: DeveloperPreview.shared.listing[0])
}
