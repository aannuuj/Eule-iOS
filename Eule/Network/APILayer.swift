//
//  APILayer.swift
//  Eule
//
//  Created by Hariom Palkar on 24/10/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import Combine

protocol APIService {
    func request<T: Decodable>(with builder: RequestBuilder) -> AnyPublisher<T, APIError>
}
