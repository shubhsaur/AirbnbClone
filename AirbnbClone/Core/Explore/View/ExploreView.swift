//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Shubham Saurabh on 19/06/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModal = ExploreViewModal(service: ExploreService())
    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(viewModal: viewModal, show: $showDestinationSearchView)
            }else {
                ScrollView {
                    SearchAndFilterBar(location: $viewModal.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    LazyVStack(spacing: 32) {
                        ForEach(viewModal.listings) {listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Listing.self) {listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }
            
        }
    }
}

#Preview {
    ExploreView()
}
