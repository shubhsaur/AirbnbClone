//
//  ExploreViewModal.swift
//  AirbnbClone
//
//  Created by Shubham Saurabh on 21/06/24.
//

import Foundation

class ExploreViewModal: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do{
            self.listings = try await service.fetchListings()
            self.listingCopy = listings
        } catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
//        print(listings)
        let listingNew = listingCopy
        let filteredListings = listingNew.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingCopy : filteredListings
    }
}
