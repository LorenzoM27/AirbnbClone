//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 13/05/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]() // 7 -> 5
    @Published var searchLocation = "" // -> Lisboa -> 5
    private let service: ExploreService
    // a chaque fois qu'on nettoie, on aura une référence aux listings originales
    private var listingCopy = [Listing]() // 7, quand on clear, on revient ici
    
    init(service: ExploreService) {
        self.service = service
        
        // déclanche l'appel de la fonction, remplir la variable et notre vue explorer
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            self.listingCopy = listings
        } catch {
            print("DEBUG: Failed to fetch listings with error : \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        let filteredListings = listings.filter( {
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.country.lowercased() == searchLocation.lowercased()
        })
        // si filterListing est vide on renvoie le tableau de base avec tutes le données sinon on publie filteredListing
        self.listings = filteredListings.isEmpty ? listingCopy : filteredListings
    }
}
