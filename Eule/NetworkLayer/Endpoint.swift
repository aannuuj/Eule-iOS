//
//  Endpoint.swift
//  APIManager
//
//  Created by Ishan Chhabra on 19/05/19.
//  Copyright © 2019 Ishan Chhabra. All rights reserved.
//

import Foundation

protocol Endpoint {
    var baseUrl: String { get }
    var path: String { get }
    var urlParameters: [URLQueryItem] { get }
}

extension Endpoint{
    var urlComponent: URLComponents {
        var urlComponent = URLComponents(string: baseUrl)
        urlComponent?.path = path
        urlComponent?.queryItems = urlParameters
        return urlComponent!
    }
    
    var request: URLRequest {
        return URLRequest(url: urlComponent.url!)
    }
}

enum Order: String{
    case popular, latest, oldest
}


enum UnsplashEndpoint: Endpoint{
    case photos(id: String, order: Order)
    case users(id: String, order: Order)
    var baseUrl: String {
        return "https://api.unsplash.com"
    }
    
    var path: String {
        switch self {
        case .photos:
            return "/photos"
        case .users:
            return "/users"
            
        }
    }
    
    var urlParameters: [URLQueryItem] {
        switch self {
        case .photos(let id, let order):
            return [
                URLQueryItem(name: "client_id", value: id),
                URLQueryItem(name: "order_by", value: order.rawValue)
            ]
        case .users(id: let id, order: let order):
              return [
                          URLQueryItem(name: "client_id", value: id),
                          URLQueryItem(name: "order_by", value: order.rawValue)
                      ]
        }
    }
    
}
