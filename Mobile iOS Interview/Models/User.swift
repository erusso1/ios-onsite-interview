//
//  User.swift
//  Mobile iOS Interview
//
//  Created by Ephraim Russo on 8/18/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import Foundation

struct User: Identifiable {

    let givenName: String
    let familyName: String
    let pictureUrl: URL
    let id: String
    let createdAt: Date
    let updatedAt: Date
    let locationEnabled: Bool
    let suggestionRadius: Int
}
