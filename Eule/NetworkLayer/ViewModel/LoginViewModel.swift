//
//  LoginViewModel.swift
//  Eule
//
//  Created by Hariom Palkar on 19/11/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation

class LoginViewModel {
    func login(apiKey: String, secretKey: String) {
        let parameters = ["grant_type": "client_credentials", "client_id": apiKey, "client_secret": secretKey]
        NetworkManager.shared.authorize(parameters: parameters) { (result) in
            switch result {
            case .success(let data):
                if let token = (try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any])?["x-access-token"] as? String {
                    UserDefaultsManager.shared.signIn(token: token)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
