//
//  LogInButtonView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 13/05/2024.
//

import SwiftUI

struct LogInButtonView: View {
    var body: some View {
        
        Button {
            print("log in")
        } label: {
            Text("Se connecter")
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    LogInButtonView()
}
