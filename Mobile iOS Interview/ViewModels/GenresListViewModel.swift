//
//  File.swift
//  Mobile iOS Interview
//
//  Created by Ephraim Russo on 9/17/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import Foundation
import UIKit

final class GenresListViewModel: NSObject {
    
    private let genres: [Genre]
    
    init(genres: [Genre]) {
        self.genres = genres
    }
    
    // TODO: G - Implement me
    /// Returns the display title for the `Genre` with overall best movies (computed by the average of the movies' `weightedScore`.
    var displayBestGenreTitle: String {
        var highIndex: Int = 0
        var highScore: Float = .leastNormalMagnitude
        for index in 0..<genres.count {
            let genre = genres[index]
            
            if genre.weightedScore > highScore {
                highScore = genre.weightedScore
                highIndex = index
            }
            
        }
        
        return genres[highIndex].name
    }
}
