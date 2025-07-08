//
//  ListingProvider.swift
//  AppIntentsDemo
//
//  Created by Humberto Espinola on 7/8/25.
//

import Foundation

final class ListingProvider {
    static let listings = "listings"
    
    static func load<T: Decodable>(_ fileName: String) -> [T] {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            fatalError("Failed to locate \(fileName)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(fileName)")
        }
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        do {
            return try decoder.decode([T].self, from: data)
        } catch {
            fatalError("Failed to decode \(fileName): \(error)")
        }
    }
}
