//
//  AppIntentsDemoApp.swift
//  AppIntentsDemo
//
//  Created by Humberto Espinola on 7/8/25.
//

import SwiftUI

@main
struct AppIntentsDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ListingListView(listings: ListingProvider.load(ListingProvider.listings))
        }
    }
}
