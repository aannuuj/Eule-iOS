//
//  AppView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AppView: View {
    
    @State private var selection = 1
    init() {
        UITabBar.appearance().backgroundColor = UIColor.EuleWhite
    }
    
    var body: some View {
        TabView(selection: $selection) {
            ContentView()
                .onTapGesture {
                    self.selection = 1
                }
                .tabItem {
                    Image( self.selection == 1 ? "Tab.Home.Selected" : "Tab.Home")
                    Text("Home")
                        .font(.EuleTabBar)
                }
                .tag(1)
            RecordView()
                .onTapGesture {
                    self.selection = 2
                }
                .tabItem {
                    Image( self.selection == 2 ? "Tab.Records.Selected" : "Tab.Records")
                    Text("Records")
                        .font(.EuleTabBar)
                }
                .tag(2)
            MarketView()
                .onTapGesture {
                    self.selection = 3
                }
                .tabItem {
                    Image( self.selection == 3 ?  "Tab.Market.Selected" : "Tab.Market")
                    Text("Market")
                        .font(.EuleTabBar)
                }
                .tag(3)
            SocialView()
                .onTapGesture {
                    self.selection = 4
                }
                .tabItem {
                    Image( self.selection == 4 ? "Tab.Social.Selected" : "Tab.Social")
                    Text("Social")
                        .font(.EuleTabBar)
                }
                .tag(4)
            ProfileView().environmentObject(IconNames())
                .onTapGesture {
                    self.selection = 5
                }
                .tabItem {
                    Image( self.selection == 5 ? "Tab.Profile.Selected" : "Tab.Profile" )
                    Text("Profile")
                        .font(.EuleTabBar)
                }
                .tag(5)
            
        }
        .accentColor(Color.EuleGreen)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

