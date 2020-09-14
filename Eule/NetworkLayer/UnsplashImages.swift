//
//  UnsplashImages.swift
//  APIManager
//
//  Created by Ishan Chhabra on 19/05/19.
//  Copyright © 2019 Ishan Chhabra. All rights reserved.
//

import Foundation

typealias Photos = [Photo]

struct Photo: Codable{
    let id: String
    let urls: URLS
}

enum URLS: String, Codable{
    case raw, full, regular, small, thumb
}

