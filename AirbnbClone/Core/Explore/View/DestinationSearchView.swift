//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 11/05/2024.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    
    @Binding var show: Bool
    // Pour la recherche
    @ObservedObject var viewModel: ExploreViewModel
    @State private var selectedOptions: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    
    
    
    var body: some View {
        VStack {
            // Button view
            HStack {
                Button {
                    withAnimation(.snappy) {
                        viewModel.updateListingsForLocation()
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                if !viewModel.searchLocation.isEmpty {
                    Button("Clear") {
                        viewModel.searchLocation = ""
                        viewModel.updateListingsForLocation()
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            VStack(alignment: .leading) {
                
                if selectedOptions == .location {
                    
                    Text("Destination")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Rechercher une destination", text: $viewModel.searchLocation)
                            .font(.subheadline)
                        // quand on appuie sur un bouton soumettre ou entrée du clavier, ce qu'il y a dans onSubmit se déclanche
                            .onSubmit {
                                viewModel.updateListingsForLocation()
                                // on va dismiss la vue après avoir filtrer/mis a jour les listings
                                show.toggle()
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(Color(.systemGray4))
                    }
                    
                } else {
                    CollapsePickerView(title: "Où", description: "Je suis fléxible")
                }
             
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOptions == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOptions = .location }
                
            }
            
            // Date selection View
            
            VStack(alignment: .leading) {
                
                if selectedOptions == .dates {
                    Text("Quand voulez-vous voyager ?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack {
                        DatePicker("À partir du", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("Jusqu'au", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                } else {
                    CollapsePickerView(title: "Durée", description: "Une semaine")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOptions == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOptions = .dates }
            }
            
            // num guests
            
            VStack(alignment: .leading) {
                
                if selectedOptions == .guests {
                    Text("Qui participe à ce voyage ?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Stepper {
                        Text("\(numGuests) Adultes")
                    } onIncrement: {
                        numGuests += 1
                    } onDecrement: {
                        guard numGuests > 0 else { return }
                        numGuests -= 1
                    }

                    
                } else {
                    CollapsePickerView(title: "Voyageurs", description: "Ajouter des voyageurs")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOptions == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOptions = .guests }
            }
            
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreService()))
}


struct CollapsibleDestinationViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

struct CollapsePickerView: View {
    
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
                    .fontWeight(.semibold)
                    .font(.subheadline)
            }
        }
    }
}
