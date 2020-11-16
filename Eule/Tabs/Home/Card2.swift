//
//  Card2.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct Card2: View {
    var imageName = "Scan"
    var title = "Scan Documents"
    var background : Color = .EuleBackground
    var body: some View {
        
        VStack(alignment: .center, spacing: 20){
            Image(imageName)
            Text(title)
                .font(.EuleTitle)
                .foregroundColor(.gray)
        }
        .cornerRadius(10)
        .frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/2.5)
        .background(background ?? Color(.EuleBackground))
        
    }
}

struct Card2_Previews: PreviewProvider {
    static var previews: some View {
        Card2()
    }
}
