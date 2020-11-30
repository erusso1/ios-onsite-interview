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
    
    // For full docs, see https://iosinterview1.docs.apiary.io/#
    private let baseUrl: URL = URL(string: "https://private-anon-c4a8f2e9c6-iosinterview1.apiary-mock.com")!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
    }
    
    func testDeserializeGenresResponse() throws {
        
        // This test deserializes the `Genre` array found in
        // `ListMoviesResponse.json`, and asserts that the array is not empty.
        
        XCTAssertFalse(Mocks.genres.isEmpty)
    }
    
    func testDeserializeUserProfileResponse() throws {
        
        // TODO: H - Implement me

        // This test deserializes the `User` object found in
        // `GetUserProfileResponse.json` and asserts that the user
        // properties are correct.
        
        XCTAssertNotNil(Mocks.user, "User was not deserialized right.")
        
        XCTAssertEqual(Mocks.user?.id, "dr82croec4igianatz15")
        
    }
    
    func testGeUserProfileFromNetwork() {
        
        // TODO: I - Implement me

        // This test performs an HTTP GET network request at `/users/me`
        // and deserializes the response accordingly
                
        let url = baseUrl
            .appendingPathComponent("users")
            .appendingPathComponent("me")
        
        let exp = expectation(description: "")
        
        NetworkingClient.sendRequest(.get, to: url, as: User.self) { result in
            
            defer { exp.fulfill() }
            
            switch result {
            case .success(_):
                XCTAssert(true)
            case .failure(let error):
                XCTAssert(false, error.localizedDescription)
            }
        }

        waitForExpectations(timeout: 10, handler: nil)
    }
        
    func testGetGenresFromNetwork() {
        
        // TODO: J - Implement me

        // This test performs an HTTP GET network request at `/movies/genres`
        // and deserializes the response accordingly
        
        let url = baseUrl
            .appendingPathComponent("movies")
            .appendingPathComponent("genres")
        
        let exp = expectation(description: "")
        
        NetworkingClient.sendRequest(.get, to: url, as: [Genre].self) { result in
            
            defer { exp.fulfill() }
            
            switch result {
            case .success(let genres):
                XCTAssertFalse(genres.isEmpty)
            case .failure(let error):
                XCTAssert(false, error.localizedDescription)
            }
        }
                
        waitForExpectations(timeout: 10, handler: nil)
    }
}
