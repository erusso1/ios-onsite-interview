//
//  Genre.swift
//  Mobile iOS Interview
//
//  Created by Ephraim Russo on 8/18/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import Foundation

struct Genre: Identifiable {
    
    let name: String
    let createdAt: Date
    let updatedAt: Date
    let id: String
    let movies: [Movie]
}
