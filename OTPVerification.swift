//
//  OTPVerification.swift
//  Eule
//
//  Created by Hariom Palkar on 02/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct OTPVerification: View {
    @State var code = ""
    @Binding var show : Bool
    @Binding var ID : String
    @State var msg = ""
    @State var alert = false
    @Binding var no : String
    @State private var Tapped = false
 @State private var ChangeNo = false

    
    var size = UIScreen.main.bounds
    var body: some View {

            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 10){
                    VStack(alignment: .center, spacing: 30){
                        Spacer()
                            .frame( height: size.width/10)
                        
                        Text("You’re just a few steps away ")
                        
                        
                        Text("Please enter the one time password \n recived on \(no)")
                            .font(.EuleLabel)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                         NavigationLink(destination: PhoneNumber(), isActive: $ChangeNo) { EmptyView() }
                        Button(action: {
                            self.ChangeNo = true
                        }){
                            Text("Change Number")
                        }
                        Spacer()
                            .frame( height: 50)
                        TextField("000000", text: self.$code)
                            .font(.EuleHeading)
                            .keyboardType(.numberPad)
                            .textContentType(.oneTimeCode)
                            .fixedSize()
                            .accentColor(Color.EuleGreen)
                            .animation(.linear)
                        
                        Spacer()
//                        NavigationLink(destination: UserName(), isActive: $Tapped) { EmptyView() }
                        Button(action: {
                            
                           let credential =  PhoneAuthProvider.provider().credential(withVerificationID: self.ID, verificationCode: self.code)
                            
                            Auth.auth().signIn(with: credential) { (res, err) in
                                
                                if err != nil{
                                    
                                    self.msg = (err?.localizedDescription)!
                                    self.alert.toggle()
                                    return
                                }
                            
                                UserDefaults.standard.set(true, forKey: "status")
                                
                                NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                            }
                            
                        }){
                            Text("Continue")
                        }.buttonStyle(EuleGreenButton())
                        
                        
                    }.background(Color.white)
                }
                .cornerRadius(15)
                .frame(width: (size.width) )
                .padding(.top, 40)
                
                
                
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .accentColor(.EuleGreen)
           .alert(isPresented: $alert) {
                             
                         Alert(title: Text("Error"), message: Text(self.msg), dismissButton: .default(Text("Ok")))
                     }
        }
}



