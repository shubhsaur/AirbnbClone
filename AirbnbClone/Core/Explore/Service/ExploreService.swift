//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Shubham Saurabh on 21/06/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
