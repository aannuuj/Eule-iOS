//
//  PhoneNumber.swift
//  Eule
//
//  Created by Hariom Palkar on 30/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct PhoneNumber: View {
    @State var phoneNumber: String = ""
    var body: some View {
        
        VStack(alignment: .center, spacing: 10){
            Text("Lets take the fist step\ntowards a healthier life!")
              .font(.EuleHeading)
             .foregroundColor(.gray)
             Spacer()
                .frame( height: 50)
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
                    .font(.EuleTitle)
                    .foregroundColor(.gray)
                HStack {
                    Button(action: { }) {
                        Text("Terms & Conditions")
                            .font(.EuleTitle)
                            .foregroundColor(Color.blue)
                    }
                    Text("and")
                        .multilineTextAlignment(.center)
                        .font(.EuleTitle)
                        .foregroundColor(.gray)
                    Button(action: {  }) {
                        Text("Privacy Policy")
                            .font(.EuleTitle)
                            .foregroundColor(Color.blue)
                    }
                }
                Button(action: {}){
                    Text("Continue")
                }
                .padding(.all,20)
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .onAppear {
                
            }
        }
    }
    
}

struct PhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumber()
    }
}
