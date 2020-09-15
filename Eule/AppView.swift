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
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    //    var selectionNo = Int
    //    var selectedIcon = ""
    //    var unselectedIcon = ""
    //    var tabTitle = ""
    //    var DestinationBody: some View{
    //
    //        VStack {
    //            if selection == selectionNo {
    //                Image(selectedIcon)
    //            } else {
    //                Image(unselectedIcon)
    //            }
    //            Text("Home")
    //                .font(.EuleTabBar)
    //        }
    //    }
    //
    
    var body: some View {
        
        TabView(selection: $selection) {
            ContentView()
                .onTapGesture {
                    self.selection = 1
            }
            .tabItem {
                VStack {
                    if selection == 1 {
                        Image( "Tab.Home.Selected")
                        .animation(.interpolatingSpring(mass: 0.7, stiffness: 200, damping: 10, initialVelocity: 4))
                    }
                    else {
                        Image("Tab.Home")
                    }
                    Text("Home")
                        .font(.EuleTabBar)
                }
            }
            .tag(1)
            RecordView()
                .onTapGesture {
                    self.selection = 2
            }
            .tabItem {
                VStack {
                    if selection == 2 {
                        Image( "Tab.Records.Selected")
                    } else {
                        Image("Tab.Records")
                    }
                    Text("Records")
                        .font(.EuleTabBar)
                }
            }
            .tag(2)
            MarketView()
                .onTapGesture {
                    self.selection = 3
            }
            .tabItem {
                VStack {
                    if selection == 3 {
                        Image( "Tab.Market.Selected")
                    } else {
                        Image("Tab.Market")
                    }
                     Text("Market")
                        .font(.EuleTabBar)
                }
                
            }
            .tag(3)
            SocialView()
                .onTapGesture {
                    self.selection = 4
            }
            .tabItem {
                VStack {
                    if selection == 4 {
                        Image( "Tab.Social.Selected")
                    } else {
                        Image("Tab.Social")
                    }
                    Text("Social")
                        .font(.EuleTabBar)
                }
            }
            .tag(4)
            ProfileView()
                .onTapGesture {
                    self.selection = 5
            }
            .tabItem {
                VStack {
                    if selection == 5 {
                        Image( "Tab.Profile.Selected")
                    } else {
                        Image("Tab.Profile")
                    }
                    Text("Profile")
                        .font(.EuleTabBar)
                }
                
            }  .tag(5)
            
        }
        .accentColor(Color.EuleGreen)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

