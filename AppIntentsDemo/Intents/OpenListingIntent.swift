//
//  OpenListingIntent.swift
//  AppIntentsDemo
//
//  Created by Humberto Espinola on 7/8/25.
//

import AppIntents

struct OpenListingIntent: OpenIntent {
    static let title: LocalizedStringResource = "Open Listing"
    
    static let isDiscoverable: Bool = true
    static let supportedModes: IntentModes = .foreground
    
    @Parameter(title: "Listing")
    var target: Listing
    
    func perform() async throws -> some IntentResult {
        // Open listing details screen ...
        return .result()
    }
}
