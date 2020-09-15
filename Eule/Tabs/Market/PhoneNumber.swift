//
//  PhoneNumber.swift
//  Eule
//
//  Created by Hariom Palkar on 30/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct PhoneNumber: View {
    @State var ccode = "91"
    @State var no = ""
    @State var show = false
    @State var msg = ""
    @State var alert = false
    @State var ID = ""
    @State var showWebView = false
    @State private var Tapped = false
    @State private var entry = ""

    let characterLimit = 10
    var size = UIScreen.main.bounds
    var body: some View {
        ZStack{
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 10){
                VStack(alignment: .center, spacing: 30){
                    Spacer()
                        .frame( height: size.width/10)
                    Text("Lets take the fist step\ntowards a healthier life!")
                        .multilineTextAlignment(.center)
                        .font(.EuleLabel)
                        .foregroundColor(.gray)
                        .frame(alignment: .center)
                    
                    HStack {
                        Text("+91")
                            .font(.EuleHeading)
                            .foregroundColor(.gray)
                            .fixedSize()
                        Text("|")
                            .font(.system(.title, design: .monospaced))
                            .fontWeight(.thin)
                            .foregroundColor(.secondary)
                        TextField("999-9999-999", text: $no)
                              .disabled(entry.count > (characterLimit - 1))
                            .font(.EuleHeading)
                            .fixedSize()
                            .keyboardType(.numberPad)
                            .textContentType(.oneTimeCode)
                            .accentColor(Color.EuleGreen)
                            .animation(.linear)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    Spacer()
                    VStack(alignment: .center, spacing: 2){
                        Text("By continuing you agree to all our")
                            .multilineTextAlignment(.center)
                            .font(.EuleTitle2)
                            .foregroundColor(.gray)
                        HStack {
                            Button(action: { self.showWebView.toggle() }) {
                                Text("Terms & Conditions")
                                    .font(.EuleTitle2)
                                
                            } .sheet(isPresented: $showWebView, content: {
                                SafariView(url: URL(string: "https://eule.in/Static:TermsAndConditions")!) })
                            Text("and")
                                .multilineTextAlignment(.center)
                                .font(.EuleTitle)
                                .foregroundColor(.gray)
                            Button(action: {  self.showWebView.toggle() }) {
                                Text("Privacy Policy")
                                    .font(.EuleTitle2)
                                
                            } .sheet(isPresented: $showWebView, content: {
                                SafariView(url: URL(string:
                                    "https://eule.in/Static:PrivacyPolicy")!) })
                        }
                        Button(action: {}){
                            Text("Need help?")
                        }
                        .foregroundColor(.gray)
                        .padding(.all,20)
                        
                        NavigationLink("", destination: OTPVerification(show: $show, ID: $ID, no: $no), isActive: $show)
                        Button(action: {
                            
                            PhoneAuthProvider.provider().verifyPhoneNumber("+"+self.ccode+self.no, uiDelegate: nil) { (ID, err) in
                                
                                if err != nil{
                                    
                                    self.msg = (err?.localizedDescription)!
                                    self.alert.toggle()
                                    return
                                }
                                
                                self.ID = ID!
                                self.show.toggle()
                            }
                            
                        }){
                            Text("Continue")
                            
                        }  .buttonStyle(EuleGreenButton())
                    }
                    
                }.background(Color.white)
                    .cornerRadius(15)
                    .frame(width: (size.width) )
                    .padding(.top, 40)
                
                
                
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .accentColor(.EuleGreen)
            .onAppear {
                
            }
        }   .alert(isPresented: $alert) {
            
            Alert(title: Text("Error"), message: Text(self.msg), dismissButton: .default(Text("Ok")))
        }
    }
    
}

struct PhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumber()
    }
}
