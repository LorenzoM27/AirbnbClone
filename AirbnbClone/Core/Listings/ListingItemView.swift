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
            
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page) // Caroussel
            
            // listing details
            
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    
                    Text("à 12km")
                        .foregroundStyle(.gray)
                    
                    Text("3 - 10 Nov")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("567€")
                            .fontWeight(.semibold)
                        Text("par nuit")
                    }
                }
                
                Spacer()
                
                // rating
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                    
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
