//
//  ProfileLinkView.swift
//  Eule
//
//  Created by Hariom Palkar on 11/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct ProfileLinkView: View {
    public let action: () -> ()
    public let title: String
    public let subtitle: String
    public let imageName: String
    
    
    public init(
        action: @escaping () -> () = { },
        title: String,
        subtitle: String,
        imageName: String
        ) {
        self.action = action
        self.title = title
        self.subtitle = subtitle
        self.imageName = imageName
    }
    
    var body: some View {
        Button(action: action) {
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




