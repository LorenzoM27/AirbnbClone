//
//  MainTabView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 13/05/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explorer", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Favoris", systemImage: "heart.fill") }
            
            ProfileView()
                .tabItem { Label("Profil", systemImage: "person.circle.fill") }
        }
    }
}

#Preview {
    MainTabView()
}
