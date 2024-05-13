//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Lorenzo Menino on 13/05/2024.
//

import Foundation

// C'est la qu'on va mettre nos données fictives

class DeveloperPreview {
    var listing: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 38.76106607746114,
            longitude: -9.103381752437835, 
            imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "12 rua da ponte",
            city: "Lisboa",
            country: "Portugal",
            title: "Magnifique villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            ametities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 37.074509222896914,
            longitude: -8.089821098280014, 
            imageURLs: ["listing-5", "listing-6", "listing-7", "listing-8"],
            address: "413 avenida do mar",
            city: "Quarteira",
            country: "Portugal",
            title: "Grande maison de ville",
            rating: 4.86,
            features: [.superHost],
            ametities: [.wifi, .kitchen, .alarmSystem, .tv, .laundry, .office],
            type: .townhouse
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 38.6614434969926254,
            longitude: -9.238770997534811,
            imageURLs: ["listing-6", "listing-5", "listing-7", "listing-8"],
            address: "90 travessa de lisboa",
            city: "Lisboa",
            country: "Portugal",
            title: "Appartement",
            rating: 4.86,
            features: [.superHost],
            ametities: [.wifi, .kitchen, .alarmSystem, .tv, .laundry, .office],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 39.05469290549666,
            longitude: -9.39869622787836,
            imageURLs: ["listing-4", "listing-2", "listing-3", "listing-1"],
            address: "90 travessa de lisboa",
            city: "Lisboa",
            country: "Portugal",
            title: "Appartement",
            rating: 4.86,
            features: [.selfCheckIn],
            ametities: [.pool],
            type: .house
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 38.71343952475373,
            longitude: -9.425461403622654,
            imageURLs: ["listing-2", "listing-1", "listing-3", "listing-4"],
            address: "90 travessa de lisboa",
            city: "Lisboa",
            country: "Portugal",
            title: "Appartement",
            rating: 4.86,
            features: [.selfCheckIn],
            ametities: [.balcony, .office],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 38.71199920107108,
            longitude: -8.97506811491006,
            imageURLs: ["listing-7", "listing-6", "listing-5", "listing-8"],
            address: "90 travessa de lisboa",
            city: "Lisboa",
            country: "Portugal",
            title: "Appartement",
            rating: 4.86,
            features: [.selfCheckIn],
            ametities: [.tv, .laundry, .wifi],
            type: .house
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 38.53967209788039,
            longitude: -8.892926717174726,
            imageURLs: ["listing-4", "listing-1", "listing-7", "listing-8"],
            address: "90 travessa de lisboa",
            city: "Lisboa",
            country: "Portugal",
            title: "Appartement",
            rating: 4.86,
            features: [.selfCheckIn],
            ametities: [.pool, .alarmSystem, .kitchen, .laundry, .wifi, .office],
            type: .house
        ),
    ]
}
