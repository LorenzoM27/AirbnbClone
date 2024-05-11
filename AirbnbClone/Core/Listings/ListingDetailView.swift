//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 11/05/2024.
//

import SwiftUI

struct ListingDetailView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    
    var body: some View {
        ScrollView {
            ListingImageCarousselView()
                .frame(height: 320)
            
            VStack(alignment: .leading, spacing: 8 ) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    // Creer un composant pour ça !!!
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text(" - ")
                        Text("28 commentaires")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami, Floride")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // Host info view
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Hôte : Lorenzo Menino et sa famile")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2) {
                        Text("4 personnes -")
                        Text("4 chambres -")
                        Text("4 lits -")
                        Text("3 salle de bains")
                    }
                    .font(.caption)
                }
                .frame(minWidth: 300)//alignment: .leading
                
                Spacer()
                
                Image("male-profile-photo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                
            }
            .padding()
            
            Divider()
            
            // Listing features
            
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0 ..< 2) { feature in
                    HStack {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("Super hôte")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Les super hôtes sont des hôtes expérimentés et très bien noté.")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ListingDetailView()
}
