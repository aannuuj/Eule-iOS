//
//  AppRoot.swift
//  Eule
//
//  Created by Hariom Palkar on 14/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import SwiftUI
import Firebase

struct AppRootView: View {
    @EnvironmentObject var network : NetworkMonitor
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    @State var name = UserDefaults.standard.value(forKey: "name") as? Bool ?? false
    var body: some View {
        
        VStack{
            if status && name && network.isActive {
                if ServerEnvironment.active != .debug {
                    AppView()
                }
                else{
//                    CredCard()
                }
            }
            else if status && network.isActive{
               UserName()
            }
            else if !network.isActive{
                NoInternetView()
            }
            else {
//               
                NavigationView{

                    PhoneNumber()
//                    AppView()
                }
            }
        }.onAppear {
            NotificationCenter.default.addObserver(forName: NSNotification.Name("statusChange"), object: nil, queue: .main) { (_) in
                let status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
                self.status = status
            }
            NotificationCenter.default.addObserver(forName: NSNotification.Name("nameAdded"), object: nil, queue: .main) { (_) in
                let name = UserDefaults.standard.value(forKey: "name") as? Bool ?? false
                self.name = name
            }
        }
    }
}
