//
//  RightView.swift
//  Eule
//
//  Created by Hariom Palkar on 11/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct RightView: View {
    let ButtonImage : String
    var body: some View {
        HStack() {
            Button(action:{}){
                Image("\(ButtonImage)")
                    .renderingMode(.original)
            }
        }
    }
}
    
    struct RightView_Previews: PreviewProvider {
        static var previews: some View {
            RightView(ButtonImage: "")
            .previewLayout(.sizeThatFits)
        }
}
