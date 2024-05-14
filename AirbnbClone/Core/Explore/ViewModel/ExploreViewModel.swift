//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 13/05/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        // déclanche l'appel de la fonction, remplir la variable et notre vue explorer
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("DEBUG: Failed to fetch listings with error : \(error.localizedDescription)")
        }
    }
}
