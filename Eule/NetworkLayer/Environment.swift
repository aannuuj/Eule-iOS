//
//  Environment.swift
//  Eule
//
//  Created by Hariom Palkar on 09/11/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import SwiftUI

public enum ServerEnvironment: String, Codable, Hashable {
    public static var active: Self {
        .debug
    }
    case temporary
    case debug
    case staging
    case production
    case local
}

extension ServerEnvironment {
    public var baseURL: String {
        switch self {
        case .temporary:
            return String("")
        case .debug:
            return String("https://nineninealpha.eule.in")
        case .staging:
            return String("https://")
        case .production:
            return String("https://")
        case .local:
            return String("https://5519addf453f.ngrok.io")
        }
    }
}
