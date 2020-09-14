//
//  ProfileLinkView.swift
//  Eule
//
//  Created by Hariom Palkar on 11/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct ProfileLinkView: View {

       public let title: String
       public let subtitle: String
       public let imageName: String
      
    var body: some View {
        Button(action: {}) {
            HStack(alignment: .center, spacing: 10) {
                       Image(imageName)
                         
                       
                       VStack(alignment: .leading, spacing: 8) {
                           Text(title)
                               .font(.EuleLabel)
                               .foregroundColor(.primary)
                           Text(subtitle)
                               .font(.EuleTitle)
                               .foregroundColor(.secondary)
                       }
                     Spacer()
                    Image(systemName: "chevron.right")
                      
                       
                   }
                   .padding([.leading, .bottom, .leading, .trailing])
               }
               .buttonStyle(PlainButtonStyle())
           }
    }


struct ProfileLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileLinkView( title: "", subtitle: "", imageName: "")
    }
}
