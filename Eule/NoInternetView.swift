//
//  NoInternetView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct NoInternetView: View {

        
        var body: some View {
        
                VStack(spacing: 20) {
                    Image("no.internet")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 233, height: 130)
                    Text("Something went wrong")
                        .multilineTextAlignment(.center)
                    Text("Uh oh! Looks like your internet\ncracked the experience")
                        .foregroundColor(Color.secondary)
                        .multilineTextAlignment(.center)
                    Button(action: {
                    
                    }) {
                        Text("Refresh")
                            .padding()
                            .padding(.horizontal)
                            .cornerRadius(8)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
    }


