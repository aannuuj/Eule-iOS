//
//  OTPVerification.swift
//  Eule
//
//  Created by Hariom Palkar on 02/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct OTPVerification: View {
     @State private var Tapped = false
    @State var phoneNumber = ""
    @State private var OTP = ""
    var size = UIScreen.main.bounds
    var body: some View {
        NavigationView{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 10){
                    VStack(alignment: .center, spacing: 30){
                        Spacer()
                            .frame( height: size.width/10)
                    
                       Text("You’re just a few steps away\(phoneNumber) ")
                    
                        
                        Text("Please enter the one time password \n recived on 7972803790\(phoneNumber) ")
                                                   .font(.EuleLabel)
                                                   .foregroundColor(.gray)
                                                   .multilineTextAlignment(.center)
                        Spacer()
                            .frame( height: 50)
                        TextField("000000", text: $OTP)
                            .font(.EuleHeading)
                            .keyboardType(.numbersAndPunctuation)
                            .textContentType(.oneTimeCode)
                            .fixedSize()
                            .accentColor(Color.EuleGreen)
                            .animation(.linear)
                        Spacer()
                        NavigationLink(destination: UserName(), isActive: $Tapped) { EmptyView() }
                                                Button(action: {
                             self.Tapped = true
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
            .onAppear {
                
            }
        }
    }
}




struct OTPVerification_Previews: PreviewProvider {
    static var previews: some View {
        OTPVerification()
    }
}

