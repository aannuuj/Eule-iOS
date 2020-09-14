//
//  UnsplashClient.swift
//  APIManager
//
//  Created by Ishan Chhabra on 19/05/19.
//  Copyright © 2019 Ishan Chhabra. All rights reserved.
//

import Foundation

class Client: APIClient{
    static let baseUrl = "https://ninenine.eule.in"
//    static let apiKey = "abc"
    
    func fetch(with endpoint: UnsplashEndpoint, completion: @escaping (Either<Photos>) -> Void){
        let request =   endpoint.request
        get(with: request, completion: completion)
    }
}
