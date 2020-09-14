//
//  LeftView.swift
//  Eule
//
//  Created by Hariom Palkar on 11/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct LeftView: View {
    @State private var showBottomSheet = false
  let ButtonImage : String
    let ViewHeading : String

    var body: some View {
  
    HStack() {
        
                 Button(action:{
                     self.showBottomSheet.toggle()
                 }){
                     Image("\(ButtonImage)")
                         .renderingMode(.original)
                 }
                 Text(ViewHeading)
                     .padding(.leading, 20)
                     .font(.EuleHeading)
                    .foregroundColor(.EuleGreen)
              }
        
    }
    
}

struct LeftView_Previews: PreviewProvider {
    static var previews: some View {
        LeftView(ButtonImage: "healthcard", ViewHeading: "Hi")
        .previewLayout(.sizeThatFits)
    }
}
