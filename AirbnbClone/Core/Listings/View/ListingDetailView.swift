//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 11/05/2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {

    @Environment(\.dismiss) var dismiss
    let listing: Listing
    // c'est comme ça que la mapCamera saitn sur quelle zone de la carte il faut regarder
    @State private var cameraPosition: MapCameraPosition
    // on ititialise pour donner à cameraPosition une valeur
    init(listing: Listing) {
        self.listing = listing
        
        let region = MKCoordinateRegion(
            center: listing.city == "Lisboa" ? .lisboa : .quarteira,
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        // underscore pour initialiser un State
        self._cameraPosition = State(initialValue: .region(region))
    }
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarousselView(listing: listing)
                    .frame(height: 320)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)// padding sur l'image et pas le bouton c'est important sinon pas cliquable, on doit en mettre un a cause du ignoresafearea
                }
                .padding()

            }
            
            VStack(alignment: .leading, spacing: 8 ) {
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    // Creer un composant pour ça !!!
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Text("\(String(format: "%.2f", listing.rating))")
                        Text(" - ")
                        Text("28 commentaires")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("\(listing.city), \(listing.country)")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // Host info view
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Hôte : \(listing.ownerName), loue \(listing.type.description)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2) {
                        Text("\(listing.numberOfGuests) personnes -")
                        Text("\(listing.numberOfBedrooms) chambres -")
                        Text("\(listing.numberOfBeds) lits -")
                        Text("\(listing.numberOfBathrooms) salle de bains")
                    }
                    .font(.caption)
                }
                .frame(minWidth: 300)//alignment: .leading
                
                Spacer()
                
                Image(listing.ownerImageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                
            }
            .padding()
            
            Divider()
            
            // Listing features
            
            VStack(alignment: .leading, spacing: 16) {
                ForEach(listing.features) { feature in
                    HStack {
                        Image(systemName: "\(feature.imageName)")
                        
                        VStack(alignment: .leading) {
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text(feature.subtitle)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            // bedrooms view
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Où vous dormirez")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1 ... listing.numberOfBedrooms, id: \.self) { bedroom in
                            VStack {
                                Image(systemName: "bed.double")
                                Text("Chambre \(bedroom)")
                            }
                            .frame(width: 132, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            //Listong amenities
            VStack(alignment: .leading, spacing: 16) {
                Text("Ce que propose ce logement")
                    .font(.headline)
                ForEach(listing.ametities) { amenity in
                    HStack {
                        Image(systemName: amenity.imageName)
                            .frame(width: 32)
                        Text(amenity.title)
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Où se situe le logement")
                    .font(.headline)
                
                Map(position: $cameraPosition)
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar) // Masquer la tab bar sur cette vue
        .ignoresSafeArea()
        .padding(.bottom, 64)
        // overlay ou ZStack c'est la même chose
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("\(listing.pricePerNight)€")
                                .font(.subheadline)
                            .fontWeight(.semibold)
                            
                            Text("par nuit")
                                .font(.footnote)
                        }
                        
                        Text("13-18 déc")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Text("Réserver")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }

                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listing[0])
}
