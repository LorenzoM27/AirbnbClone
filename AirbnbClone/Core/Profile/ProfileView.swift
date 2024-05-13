//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 13/05/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // profile login view
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Se connecter pour organiser votre voyage")
                }
     
                LogInButtonView()
                
                HStack {
                    Text("Pas encore de compte ?")
                    
                    Text("Inscrivez-vous")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            // Profile options
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "paramètres")
                ProfileOptionRowView(imageName: "gear", title: "Accessibilité")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "help Center")
                
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
