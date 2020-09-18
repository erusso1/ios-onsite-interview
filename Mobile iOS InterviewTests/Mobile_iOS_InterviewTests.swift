//
//  Mobile_iOS_InterviewTests.swift
//  Mobile iOS InterviewTests
//
//  Created by Ephraim Russo on 8/18/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import XCTest
@testable import Mobile_iOS_Interview

class Mobile_iOS_InterviewTests: XCTestCase {
    
    private let baseUrl: URL = URL(string: "https://private-anon-3e65cd2730-iosinterview1.apiary-mock.com")!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
    }
    
    func testDeserializeUserProfileResponse() throws {
        
        // This test deserializes the `User` object found in
        // `GetUserProfileResponse.json` and asserts that the user
        // properties are correct.
        
    }

    func testDeserializeGenresResponse() throws {

        // This test deserializes the `Genre` array found in
        // `ListMoviesResponse.json`, and asserts that the array is not empty.
        
        XCTAssertFalse(Mocks.genres.isEmpty)
    }
    
    func testGeUserProfileFromNetwork() {
        
        // This test performs an HTTP GET network request at `/users/me`
        // and deserializes the response accordingly
        
    }
        
    func testGetGenresFromNetwork() {
        
        // This test performs an HTTP GET network request at `/movies/genres`
        // and deserializes the response accordingly
        
    }
}
