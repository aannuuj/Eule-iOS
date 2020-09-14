//
//  PhoneNumber.swift
//  Eule
//
//  Created by Hariom Palkar on 30/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct PhoneNumber: View {
    @State var showWebView = false
     @State private var Tapped = false
    @State public var phoneNumber: String = ""
    var size = UIScreen.main.bounds
    var body: some View {
        NavigationView{
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
                            TextField("9999999999", text: $phoneNumber)
                                .font(.EuleHeading)
                                .keyboardType(.numberPad)
                                .textContentType(.telephoneNumber)
                                .fixedSize()
                                .accentColor(Color.EuleGreen)
                                .animation(.linear)
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
                                                                           SafariView(url: URL(string: "https://eule.in/Static:PrivacyPolicy")!) })
                            }
                            Button(action: {}){
                                Text("Need help?")
                            }
                            .foregroundColor(.gray)
                            .padding(.all,20)
                            
                              NavigationLink(destination: OTPVerification(), isActive: $Tapped) { EmptyView() }
                            Button(action: {
         self.Tapped = true
                            }){
                                Text("Continue")
                                   
                            }  .buttonStyle(EuleGreenButton())
                             
                            //                                .frame(width: (UIScreen.main.bounds.width - 20), height: 56, alignment: .center)
//                                .background(Color(.EuleGreen))
//                                .cornerRadius(12)
                            
                            //                    .buttonStyle(.EuleButton)
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
            }
        }
    }
    
}

struct PhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumber()
    }
}
