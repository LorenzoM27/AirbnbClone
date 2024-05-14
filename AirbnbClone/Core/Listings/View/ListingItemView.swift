//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 10/05/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing: Listing
    
    var body: some View {
        
        VStack(spacing: 8) {
            
            // images
            
            ListingImageCarousselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    
                    Text("\(listing.city), \(listing.country)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("à 12km")
                        .foregroundStyle(.gray)
                    
                    Text("3 - 10 Nov")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("\(listing.pricePerNight)€")
                            .fontWeight(.semibold)
                        Text("par nuit")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                // rating
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("\(listing.rating)")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listing[0])
}
