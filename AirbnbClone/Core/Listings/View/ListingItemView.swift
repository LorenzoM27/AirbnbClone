//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 10/05/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        
        VStack(spacing: 8) {
            
            // images
            
            ListingImageCarousselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("à 12km")
                        .foregroundStyle(.gray)
                    
                    Text("3 - 10 Nov")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("567€")
                            .fontWeight(.semibold)
                        Text("par nuit")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                // rating
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
