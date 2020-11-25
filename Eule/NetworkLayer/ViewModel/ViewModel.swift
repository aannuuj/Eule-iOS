//
//  ViewModel.swift
//  Networking
//
//  Created by Hariom Palkar on 18/11/20.
//  Copyright © 2020 Alaeddine Me. All rights reserved.
//

import Foundation

func loginUser(uid: String){
    APIClient.login(email : "", password:""){
        result in
        switch result {
        case .success(let data):
            print("\(data)_____________________________")
            print(URLResponse.self)
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}



