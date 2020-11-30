//
//  Mocks.swift
//  Mobile iOS InterviewTests
//
//  Created by Ephraim Russo on 9/18/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import Foundation
@testable import Mobile_iOS_Interview

enum Mocks {

    private static let bundle = Bundle(for: Mobile_iOS_InterviewTests.self)

    static let decoder: JSONDecoder = {
        let dec = JSONDecoder()
        dec.dateDecodingStrategy = .iso8601
        dec.keyDecodingStrategy = .convertFromSnakeCase
        return dec
    }()
    
    static let genres: [Genre] = {
        guard let url = bundle.url(forResource: "ListMoviesResponse", withExtension: "json") else { return [] }
        guard let data = try? Data(contentsOf: url) else { return [] }
        guard let genres = try? decoder.decode([Genre].self, from: data) else { return [] }
        return genres
    }()
    
    static let user: User? = {
        guard let url = bundle.url(forResource: "GetUserProfileResponse", withExtension: "json") else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        guard let user = try? decoder.decode(User.self, from: data) else { return nil }
        return user
    }()
    
    // TODO: K - Create a private generic helper method to decode a given .json `resource`
}
