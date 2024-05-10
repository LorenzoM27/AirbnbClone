//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 10/05/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    // Charge le contenu uniquement au défilement
                    ForEach(0...10, id : \.self) { listing in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
