//
//  Genre.swift
//  Mobile iOS Interview
//
//  Created by Ephraim Russo on 8/18/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import Foundation

struct Genre: Identifiable, Decodable {
    
    let name: String
    let createdAt: Date
    let updatedAt: Date
    let id: String
    let movies: [Movie]
}

extension Genre {
    
    // TODO: F - Implement me
    
    /// Returns a weighted score based on the average of the containing
    /// `movies` `weightedScore` values.
    var weightedScore: Float { movies.map {$0.weightedScore}.reduce(0, +) / Float(movies.count)}
}
