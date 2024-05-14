//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 13/05/2024.
//

import Foundation


class ExploreService {
    // ça va être traité comme un service simulé
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listing
    }
}
