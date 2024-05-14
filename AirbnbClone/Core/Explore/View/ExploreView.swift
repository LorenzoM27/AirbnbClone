//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 10/05/2024.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                VStack {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    
                    ScrollView {
                        LazyVStack(spacing: 32) {
                            // Charge le contenu uniquement au défilement
                            ForEach(0...10, id : \.self) { listing in
                                NavigationLink(value: listing) {
                                    ListingItemView()
                                        .frame(height: 400)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }
                    }
                    .navigationDestination(for: Int.self) { listing in
                        ListingDetailView()
                            .navigationBarBackButtonHidden()
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
