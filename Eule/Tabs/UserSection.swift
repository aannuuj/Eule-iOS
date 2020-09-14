//
//  UserSection.swift
//  Eule
//
//  Created by Hariom Palkar on 11/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI


public struct UserSection<Content: View>: View {
    private let title: String
    private let content: Content
    
    public init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    public var body: some View {
        Group {
            if title.isEmpty {
                VStack {
                    content
                }
                .padding(.top)
                .background(Color.white)
                .cornerRadius(12)
                .padding()
            } else {
                VStack {
                    HStack {
                        Text(title)
                            .font(.EuleTitle)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                    }
                    .padding([.leading, .top])
                    content
                }
                .background(Color.white)
                .cornerRadius(12)
                .padding()
            }
        }
    }
}
