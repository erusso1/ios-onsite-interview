//
//  NetworkClient.swift
//  Mobile iOS Interview
//
//  Created by Ephraim Russo on 11/30/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import Foundation
import Reqres

enum NetworkingClient {
    
    static let decoder: JSONDecoder = {
        let dec = JSONDecoder()
        dec.dateDecodingStrategy = .iso8601
        dec.keyDecodingStrategy = .convertFromSnakeCase
        return dec
    }()
        
    typealias NetworkResultHandler<T: Decodable> = (Result<T, Error>) -> Void
    
    enum Error: Swift.Error {
        case decodingFailure(error: Swift.Error)
        case networkUnavailable
        case unknown
    }
    
    enum Method: String {
        case get = "GET"
        case post = "POST"
        case delete = "DELETE"
        case put = "PUT"
        case patch = "PATCH"
    }
    
    static func enableLogging() {
        Reqres.register()
    }
    
    @discardableResult static func sendRequest<T: Decodable>(_ method: Method, to url: URL, as: T.Type, completion: @escaping NetworkResultHandler<T>) -> URLSessionDataTask {
        
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        let task = URLSession.shared.dataTask(with: request) { (data, res, error) in
            
            func finish(result: Result<T, Error>) {
                DispatchQueue.main.async {
                    completion(result)
                }
            }
            
            guard error == nil else { return finish(result: .failure(.networkUnavailable))  }
            
            guard let data = data else { return finish(result: .failure(.networkUnavailable)) }
            
            do {
                let item = try decoder.decode(T.self, from: data)
                return finish(result: .success(item))
            }
            catch {
                return finish(result: .failure(.networkUnavailable))
            }
        }
        
        task.resume()
    
        return task
    }
}
