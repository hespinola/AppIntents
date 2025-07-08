//
//  Listing.swift
//  AppIntentsDemo
//
//  Created by Humberto Espinola on 7/8/25.
//

import AppIntents

struct Listing: Codable, Identifiable, AppEntity {
    let id: Int
    let title: String
    let price: String
    let shopName: String
    let shopPrefix: String
    let image: String
    
    static let defaultQuery = ListingEntityQuery()
    
    static var typeDisplayRepresentation = TypeDisplayRepresentation(stringLiteral: "Listing")
    
    var displayRepresentation: DisplayRepresentation {
        DisplayRepresentation(
            title: LocalizedStringResource(stringLiteral: title),
            subtitle: LocalizedStringResource(stringLiteral: price),
            image: DisplayRepresentation.Image(named: image)
        )
    }
}

struct ListingEntityQuery: EntityQuery {
    func entities(for identifiers: [Int]) async throws -> [Listing] {
        ListingProvider.load(ListingProvider.listings)
    }
    
    func suggestedEntities() async throws -> [Listing] {
        ListingProvider.load(ListingProvider.listings)
    }
}
