//
//  ProfileView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var location = "Pune"
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading){
                    
                    VStack{
                        ScrollView(.vertical, showsIndicators: false) {
                            UserCardView()
                            UserSection(title: "") {
                                ProfileLinkView(
                                    title: "Location | \(location)",
                                    subtitle: "Your rewards are here",
                                    imageName: "Location"
                                )
                                ProfileLinkView(
                                    //                                action: { reactor.router.trigger(.faq) },
                                    title: "Account",
                                    subtitle: "Get all you details here",
                                    imageName: "Account"
                                )
                                
                                ProfileLinkView(
                                    title: "Payment History",
                                    subtitle: "All your transactions",
                                    imageName: "Payment.History"
                                )
                                
                                ProfileLinkView(
                                    title: "Rewards",
                                    subtitle: "Your rewards are here",
                                    imageName: "Rewards"
                                )
                            }
                            UserSection(title: "") {
                                ProfileLinkView(
                                    title: "Help & FAQ's",
                                    subtitle: "Get all you details here",
                                    imageName: "FAQ"
                                )
                                
                                ProfileLinkView(
                                    title: "Referals",
                                    subtitle: "Invite your friends to earn more",
                                    imageName: "Refrals"
                                )
                                
                               
                            }
                            UserSection(title: "") {
                                                         
                                                          ProfileLinkView(
                                                              title: "Fitness Devices",
                                                              subtitle: "Add and track your vitals",
                                                              imageName: "Fitness.Devices"
                                                          )
                                                      }
                            Button(
                            action:{}){
                                VStack(alignment: .leading){
                                 
                                        VStack(alignment: .leading){
                                               HStack{
                                        Image("Logout")
                                            .renderingMode(.original)
                                        Text("Logout")
                                            .foregroundColor(.black)
                                    }
                                    }
                                }.frame(width: (UIScreen.main.bounds.width - 32), height: 55 )
                                    .background(Color(.white))
                                    .cornerRadius(15)
                            }
                        }
                    }
                    .navigationBarColor(.EuleBackground
                    )
                        .navigationBarItems(leading: LeftView(ButtonImage: "", ViewHeading: "Profile"))
                        .navigationBarTitle("",displayMode: .inline)
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
