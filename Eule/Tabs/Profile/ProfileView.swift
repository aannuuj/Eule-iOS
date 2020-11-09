//
//  ProfileView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct ProfileView: View {
    //@Binding private var location : String
    var location = "Pune"
    @State var alert = false
    @State private var Tapped = false
    var body: some View {
        
        NavigationView{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading){
                    
                    VStack{
                        ScrollView(.vertical, showsIndicators: false) {
                            // card
                            UserCardView()
                            
                            UserSection(title: "") {
                                ProfileLinkView(
                                    // action: {  },
                                    title: "Location | \(location)",
                                    subtitle: "",
                                    imageName: "Location"
                                )
                                ProfileLinkView(
                                    title: "Account",
                                    subtitle: "Get all you details here",
                                    imageName: "Account"
                                )
                                ProfileLinkView(
                                    title: "Payment History",
                                    subtitle: "Your transactions simplified",
                                    imageName: "Payment.History"
                                )
                                
                                ProfileLinkView(
                                    title: "Rewards",
                                    subtitle: "Hard earned reward statement",
                                    imageName: "Rewards"
                                )
                            }
                            
                            Button(action: {
                                self.Tapped = true
                            }){
                                VStack(alignment: .leading){
                                    
                                    HStack(alignment: .center, spacing: 11){
                                        Image("Icon")
                                            
                                            .frame(width: 40, height: 40)
                                        Text("App Icon")
                                            .foregroundColor(.black)
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                            .accentColor(.black)
                                    } .padding([.leading, .leading, .trailing])
                                    
                                }.frame(width: (UIScreen.main.bounds.width - 32), height: 55 )
                                .background(Color(.white))
                                .cornerRadius(15)
                            }
                            .sheet(isPresented: $Tapped) {
                                IconView().environmentObject(IconNames())
                            }
                            
                            UserSection(title: "") {
                                ProfileLinkView(
                                    title: "Help & FAQ's",
                                    subtitle: "Have questions?",
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
                            
                            Button(action: {
                                self.alert = true
                            }){
                                VStack(alignment: .leading){
                                    
                                    HStack(alignment: .center, spacing: 11){
                                        Image("Logout")
                                            .renderingMode(.original)
                                        Text("Logout")
                                            .foregroundColor(.black)
                                        Spacer()
                                    } .padding([.leading, .leading, .trailing])
                                    
                                }.frame(width: (UIScreen.main.bounds.width - 32), height: 55 )
                                .background(Color(.white))
                                .cornerRadius(15)
                            }
                            Spacer()
                        }
                    }
                    .navigationBarColor(.EuleBackground
                    )
                    .navigationBarItems(leading: LeftView(ButtonImage: "", ViewHeading: "Profile"))
                    .navigationBarTitle("",displayMode: .inline)
                }  .alert(isPresented: $alert) {
                    
                    Alert(title: Text("Are you sure you want to logout?"), message: Text(""),primaryButton: .destructive(Text("Log Out"), action: ({
                        try! Auth.auth().signOut()
                        UserDefaults.standard.set(false, forKey: "status")
                        NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                        UserDefaults.standard.set(false, forKey: "name")
                        NotificationCenter.default.post(name: NSNotification.Name("nameAdded"), object: nil)
                        UserDefaults.standard.set(false, forKey: "excited")
                        NotificationCenter.default.post(name: NSNotification.Name("excitedChange"), object: nil)
                    })), secondaryButton: .cancel((Text("Cancel"))))
                }
            }
        }
    }
}
