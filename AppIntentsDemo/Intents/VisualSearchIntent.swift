//
//  VisualSearchIntent.swift
//  AppIntentsDemo
//
//  Created by Humberto Espinola on 7/8/25.
//

#if canImport(VisualIntelligence)
import AppIntents
import VisualIntelligence

struct VisualSearchIntent: IntentValueQuery {
    static var title = "App Intents Demo"
    static let supportedModes: IntentModes = .foreground
    
    func values(for input: SemanticContentDescriptor) async throws -> [Listing] {
        // Here we'd normally get the pixelBuffer from the SemanticContentDescriptor
        // For demo purposes, this does not process the real image and does not hit any network endpoint
        
        let listings = ListingProvider.load(ListingProvider.listings)
        return listings
    }
}

#endif
