//
//  HomeRightView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct HomeRightView: View {
    @State private var Tapped = false
    var body: some View {
        
        HStack{
          NavigationLink(destination: Payments(), isActive: $Tapped) { EmptyView() }
                Button(action:{
                    self.Tapped = true
                }){
                Image("Home.Payments")
            }
            .buttonStyle(PlainButtonStyle())
            }
        
    }
}

struct HomeRightView_Previews: PreviewProvider {
    static var previews: some View {
        HomeRightView()
        .previewLayout(.sizeThatFits)
    }
}
