//
//  Movie.swift
//  Mobile iOS Interview
//
//  Created by Ephraim Russo on 8/18/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import Foundation

struct Movie: Identifiable, Decodable {
    
    let title: String
    let thumbnailUrl: URL
    let imdbScore: Float
    let rtScore: Int
    let createdAt: Date
    let updatedAt: Date
    let liked: Bool
    let sourceUrl: URL
    let synopsis: String
    let id: String
    let cast: [Actor]
}

extension Movie {
    
    // TODO: E - Implement me
    /// Returns a weighted score between 0.0 and 10.0, computed by averaging the
    /// `imdbScore` and `rtScore` vlaues. For example, a `Movie` with an `imdbScore`
    /// of 10.0 and an rtScore of `50` would have a weighted score of `7.5`
    var weightedScore: Float { 0.0 }
}
