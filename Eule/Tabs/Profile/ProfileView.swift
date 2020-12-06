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
                                HStack(alignment: .center, spacing: 10){
                                    Image(systemName: "flame")
                                        .accentColor(.black)
                                        .frame(width: 40, height: 40)
                                        .padding(.leading, 3)
                                    VStack(alignment: .leading, spacing: 8){
                                        Text("App Icon")
                                            .font(.EuleLabel)
                                            .foregroundColor(.primary)
                                        Text("Select your fav icon")
                                            .font(.EuleTitle)
                                            .foregroundColor(.secondary)
                                    }
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .accentColor(.black)
                                }.padding(.trailing)
                                
                            }.frame(width: (UIScreen.main.bounds.width - 32), height: 55 )
                            .background(Color(.white))
                            .cornerRadius(15)
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
                                    action: { shareButton() },
                                    title: "Share app",
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
                    .navigationBarColor(.EuleBackground)
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
    func shareButton() {
        
        guard let data = URL(string: "https://www.eule.in/cs") else { return }
        let av = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
}
