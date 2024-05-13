//
//  Listing.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 13/05/2024.
//

import Foundation


struct Listing: Identifiable, Codable {
    
    let id: String
    let ownerId: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    var imageURLs : [String]
    let address: String
    let city: String
    let country: String
    let title: String
    var rating: Double
    var features : [ListingFeatures]
    var ametities: [ListingAmenities]
    var type: ListingTypes
}


enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName : String {
        switch self {
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }

    var title : String {
        switch self {
        case .selfCheckIn: return "Hôte"
        case .superHost: return "Super hôte"
        }
    }
    
    var subtitle : String {
        switch self {
        case .selfCheckIn: 
            return "membre réçent"
        case .superHost:
            return "Les super hôtes sont des hôtes expérimentés et très bien noté."
        }
    }
    
    var id: Int { return self.rawValue }
}


enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Piscine"
        case .kitchen: return "Cuisine"
        case .wifi: return "Wifi"
        case .laundry: return "Blanchisserie"
        case .tv: return "TV"
        case .alarmSystem: return "Système d'alarme"
        case .office: return "Bureau"
        case .balcony: return "Balcon"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
    }
    
    var id: Int { return self.rawValue } // Donne à chaque élément de l'énum un id qui correspond à sa position exemple : pool = 0, kitchen = 1... pas besoin de l'écrie swift le fait pour nous
}

enum ListingTypes: Int, Codable, Identifiable, Hashable {
    
    case apartment
    case house
    case townhouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Appartement"
        case .house: return "Maison"
        case .townhouse: return "Maison de ville"
        case .villa: return "Villa"
        }
    }
    var id: Int { return self.rawValue }
}
