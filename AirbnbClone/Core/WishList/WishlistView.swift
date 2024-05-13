//
//  WishlistView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 13/05/2024.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Connectez-vous pour voir vos favoris.")
                        .font(.headline)
                    
                    Text("Vous pouvez créer, voir et éditer vos favoris une fois connecté.")
                        .font(.footnote)
                    
                }
                
                LogInButtonView()
                
                Spacer()

            }
            .padding()
            .navigationTitle("Favoris")
        }
        
    }
}

#Preview {
    WishlistView()
}
