//
//  UserDefaults.swift
//  Networking
//
//  Created by Hariom Palkar on 19/11/20.
//  Copyright © 2020 Alaeddine Me. All rights reserved.
//

import Foundation

class UserDefaultsManager {
    enum Key: String {
        case apiKey
        case secretKey
        case token
        case isSignedIn
    }
    static let shared: UserDefaultsManager = {
        return UserDefaultsManager()
    }()
    func getUserCredentials() -> (apiKey: String?, secretKey: String?) {
        let apiKey = UserDefaults.standard.string(forKey: Key.apiKey.rawValue)
        let secretKey = UserDefaults.standard.string(forKey: Key.secretKey.rawValue)
        return (apiKey, secretKey)
    }
    func setUserCredentials(apiKey: String, secretKey: String) {
        UserDefaults.standard.set(apiKey, forKey: Key.apiKey.rawValue)
        UserDefaults.standard.set(secretKey, forKey: Key.secretKey.rawValue)
        UserDefaults.standard.synchronize()
    }
    func getToken() -> String? {
        return UserDefaults.standard.string(forKey: Key.token.rawValue)
    }
    func setToken(token: String) {
        UserDefaults.standard.set(token, forKey: Key.token.rawValue)
        UserDefaults.standard.synchronize()
    }
    func signInUser() {
        UserDefaults.standard.set(true, forKey: Key.isSignedIn.rawValue)
        UserDefaults.standard.synchronize()
    }
    func signOutUser() {
        UserDefaults.standard.set(false, forKey: Key.isSignedIn.rawValue)
        UserDefaults.standard.synchronize()
    }
    func isUserSignedIn() -> Bool {
        return UserDefaults.standard.bool(forKey: Key.isSignedIn.rawValue)
    }
    func signIn(token: String) {
        setToken(token: token)

    }
}
