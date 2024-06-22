//
//  DeveloperPreview.swift
//  AirbnbTutorial
//
//  Created by Stephan Dowless on 10/16/23.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageId: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 654,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-1", "listing-2", "listing-3"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Timothy Chalmet",
            ownerImageId: "male-profile-photo",
            numberOfBedrooms: 3,
            numberOfBathrooms: 3,
            numberOfGuests: 6,
            numberOfBeds: 3,
            pricePerNight: 554,
            latitude: 34.1,
            longitude: -118.1426,
            imageURLs: ["listing-4", "listing-2", "listing-3"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Beautiful Los Angeles home in the hollywood Hills",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .kitchen, .office, .tv],
            type: .townhouse
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Steven Johnson",
            ownerImageId: "male-profile-photo",
            numberOfBedrooms: 5,
            numberOfBathrooms: 3,
            numberOfGuests: 8,
            numberOfBeds: 5,
            pricePerNight: 756,
            latitude: 25.7766,
            longitude: -80.1340,
            imageURLs: ["listing-3", "listing-1", "listing-2"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Beach House",
            rating: 4.42,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .kitchen, .office, .tv],
            type: .house
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Harry Styles",
            ownerImageId: "male-profile-photo",
            numberOfBedrooms: 2,
            numberOfBathrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 421,
            latitude: 25.7650,
            longitude: -80.1936,
            imageURLs: ["listing-2", "listing-3", "listing-4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Beautiful Los Angeles home in Malibu",
            rating: 4.32,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony],
            type: .apartment
        ),
    ]
}
