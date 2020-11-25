//
//  EuleButtons.swift
//  Eule
//
//  Created by Hariom Palkar on 13/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct EuleButtons: View {
    var body: some View {
        Button(action:{}){
            Text("Get It Now")
        }
        .frame(maxWidth: .infinity, maxHeight: 44)
        .foregroundColor(.white)
        .padding(.all, 15)
        .cornerRadius(10)
        .background(Color(red: 0.55, green: 0.473, blue: 0.396))
    }
}

struct EuleButtons_Previews: PreviewProvider {
    static var previews: some View {
        EuleButtons()
    }
}

public struct EuleGreenButton: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center) {
            Spacer()
            configuration.label
                .font(.EuleHeading)
            Spacer()
        }
        .frame(height: 55)
        .background(LinearGradient(gradient:Gradient(colors: [.EuleGreen, .EuleBlue]), startPoint: .leading, endPoint: .trailing))
        .foregroundColor(Color.white)
        .overlay(Color.white.opacity(configuration.isPressed ? 0.5 : 0.0))
             .cornerRadius(15)
            .padding()
   
    }
    
    public init() {
        
    }
}
