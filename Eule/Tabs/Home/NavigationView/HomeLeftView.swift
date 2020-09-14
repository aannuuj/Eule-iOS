//
//  HomeLeftView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct HomeLeftView: View {
        @State private var Tapped = false
    var body: some View {
       
        HStack {
          NavigationLink(destination: Healthcard(), isActive: $Tapped) { EmptyView() }
                Button(action:{
                       self.Tapped = true
                }){
                    Image("Home.HealthRecord")
                    .renderingMode(.original)
                Text("Home")
                    .font(.EuleHeading)
                    .foregroundColor(.EuleGreen)
            }
            .buttonStyle(PlainButtonStyle())
           
            }
        }
    
    }





struct HomeLeftView_Previews: PreviewProvider {
    static var previews: some View {
      HomeLeftView()
        .previewLayout(.sizeThatFits)
    }
}
