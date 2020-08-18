//
//  Movie.swift
//  Mobile iOS Interview
//
//  Created by Ephraim Russo on 8/18/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import Foundation

struct Movie: Identifiable {
    
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
