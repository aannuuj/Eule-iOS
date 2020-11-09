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
import Combine

struct PhoneNumber: View {
    @State var code = ""
    @State private var ccode = "91"
    @State var no = ""
    @State var show = false
    @State private var msg = ""
    @State private var alert = false
    @State private var ID = ""
    @State var showPrivacy = false
    @State var showTerms = false
    
    @State private var Tapped = false
   
    var size = UIScreen.main.bounds
    var body: some View {
        ZStack{
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 10){
                VStack(alignment: .center, spacing: 30){
                    Spacer()
                        .frame( height: size.width/20)
                    VStack(alignment: .center, spacing: 15){
                    Image("Logo")
                        .resizable()
                        .frame(width: 161, height: 51, alignment: .center)
                        
                    Text("Lets take the fist step\ntowards a healthier life!")
                        .multilineTextAlignment(.center)
                        .font(.EuleLabel)
                        .foregroundColor(.gray)
                        .frame(alignment: .center)
                    }
                    HStack {
                        Text("+91")
                            .font(.EuleHeading)
                            .foregroundColor(.gray)
                            .fixedSize()
                        Text("|")
                            .font(.system(.headline, design: .monospaced))
                            .fontWeight(.thin)
                            .foregroundColor(.secondary)
                        TextField("777-777-7777", text: self.$no)
                            .font(.LargeHeadline)
                            .fixedSize()
                            .keyboardType(.numberPad)
                            .textContentType(.oneTimeCode)
                            .accentColor(Color.EuleGreen)
                            .animation(.linear)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .onReceive(Just(self.no)) { inputValue in
                                        if inputValue.count > 10 {
                                            self.no.removeLast()
                                        }
                                    }
                    }
                    Spacer()
                    VStack(alignment: .center, spacing: 2){
                        Text("By continuing you agree to all our")
                            .multilineTextAlignment(.center)
                            .font(.EuleTitle2)
                            .foregroundColor(.gray)
                        // add constants to these links and make them dynamic
                        HStack {
                            Button(action: { self.showTerms.toggle() }) {
                                Text("Terms & Conditions")
                                    .font(.EuleTitle2)
                            } .sheet(isPresented: $showTerms, content: {
                                        SafariView(url: URL(string: "https://eule.in/Static:TermsAndConditions")!) })
                            .accentColor(.EuleGreen)
                            Text("and")
                                .multilineTextAlignment(.center)
                                .font(.EuleTitle)
                                .foregroundColor(.gray)
                            Button(action: {  self.showPrivacy.toggle() }) {
                                Text("Privacy Policy")
                                    .font(.EuleTitle2)
                            } .sheet(isPresented: $showPrivacy, content: {
                                        SafariView(url: URL(string: "https://eule.in/Static:PrivacyPolicy")!) })
                            .accentColor(.EuleGreen)
                            
                        }
                        Button(action: {
                            //trigger chat bot sdk
                        }){
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
                        }.buttonStyle(EuleGreenButton())
                        .opacity(!(no.count < 10) ? 1 : 0.5)
                        .disabled(!(no.count < 10) ? false : true)
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
                // if onboarding done store user default state
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
