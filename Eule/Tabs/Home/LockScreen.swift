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
                .animation(.linear)
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
}
extension LockScreen{
    func authenticate() {
        
        let context = LAContext()
        var authenticationError : NSError?
        let reason = "We need to unlock your data."
        context.localizedFallbackTitle = "Please use your Passcode"

        // check whether biometric authentication is possible
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &authenticationError ) {
            context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: reason)  {success, authenticationError  in
                DispatchQueue.main.async {
                    if success {
                       self.isUnlocked = true
                        // authentication has now completed
                    } else {
                        guard let error = authenticationError  else {
                            return
                        }
                    }
                }
            }
        }
        
        else {
            guard let error = authenticationError  else {
                return
            }
            let alertController = UIAlertController(title: "Your phone looks insecure", message: "We care for your security. You need to setup a phone lock to help us in making it secure.", preferredStyle: .alert)
            let yesAction = UIAlertAction(title: "Setup Device Lock", style: .default) { _ in
                return
            }
            alertController.addAction(yesAction)
        }
    }
}


struct LockScreen_Previews: PreviewProvider {
    static var previews: some View {
        LockScreen()
    }
}

