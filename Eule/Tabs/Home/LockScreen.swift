//
//  LockScreen.swift
//  Eule
//
//  Created by Hariom Palkar on 15/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI
import LocalAuthentication

struct LockScreen: View {
    @State private var isUnlocked = false
    var body: some View {
      VStack {
            if self.isUnlocked {
               AppView()
            } else {
                VStack(alignment: .center, spacing: 15){
                    Image("Ill.Locked")
                        .frame(width: (UIScreen.main.bounds.width-100) )
                    Text("Unlock Experience")
                        .font(.EuleBulkHeading)
                        .foregroundColor(.black)
                    Text("Confirm your face ID, touch Id or \n passcode to unlock")
                        .multilineTextAlignment(.center)
                        .font(.EuleTitle2)
                        .foregroundColor(.gray)
                    Spacer()
                    Button(action: {self.authenticate()}){
                        Text("Try again")
                    }.buttonStyle(EuleGreenButton())
        }
            }
        }
        .onAppear(perform: authenticate)
    }
    func authenticate() {
        let context = LAContext()
        var error: NSError?

        // check whether biometric authentication is possible
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            // it's possible, so go ahead and use it
            let reason = "We need to unlock your data."

            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                // authentication has now completed
                DispatchQueue.main.async {
                    if success {
                       self.isUnlocked = true
                    } else {
                       return
                    }
                }
            }
        } else {
            // no biometrics
        }
    }
    
}


struct LockScreen_Previews: PreviewProvider {
    static var previews: some View {
        LockScreen()
    }
}

