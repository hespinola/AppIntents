//
//  ListingCardView.swift
//  AppIntentsDemo
//
//  Created by Humberto Espinola on 7/7/25.
//

import SwiftUI

struct ListingCardView: View {
    let listing: Listing
    
    init(listing: Listing) {
        self.listing = listing
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(ImageResource(name: listing.image, bundle: .main))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 170, height: 210)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            Text(listing.title)
                .font(.title3)
                .bold()
                .lineLimit(2)
            
            Text(listing.shopName)
                .font(.subheadline)
            
            Text(listing.price)
                .font(.subheadline)
                .bold()
                .foregroundStyle(.green)
        }
        .frame(width: 170)
    }
}

struct ListingCardView_Previews: PreviewProvider {
    static var previews: some View {
        ListingCardView(
            listing: ListingProvider.load(ListingProvider.listings)[0]
        )
    }
}
