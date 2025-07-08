//
//  ListingListView.swift
//  AppIntentsDemo
//
//  Created by Humberto Espinola on 7/7/25.
//

import SwiftUI

struct ListingListView: View {
    let listings: [Listing]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [
                GridItem(.adaptive(minimum: 170, maximum: 200))
            ]) {
                ForEach(listings) { listing in
                    ListingCardView(listing: listing)
                }
            }
        }
    }
}

struct ListingListView_Previews: PreviewProvider {
    static var previews: some View {
        ListingListView(listings: ListingProvider.load(ListingProvider.listings))
    }
}
