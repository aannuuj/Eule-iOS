//
//  APIError.swift
//  Eule
//
//  Created by Hariom Palkar on 24/10/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation

enum APIError: Error {
    case decodingError
    case httpError(Int)
    case unknown
}
