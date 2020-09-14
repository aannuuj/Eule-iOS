//
//  BloodView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct BloodView: View {
    var body: some View {
       
            HStack(alignment: .center, spacing: 10){
                HStack{
                Image("Emergancy.Blood")
                    .renderingMode(.original)
                    .frame(width: 24, height: 24)
                  
                Text("B+ blood required")
                    .font(.EuleLabelBold)
                
                    .foregroundColor(.black)
                Spacer()
                }.padding(.init(top: 20, leading: 10, bottom: 10, trailing: 10))
            }
               .cornerRadius(15, corners: [.topLeft, .topRight])
        }
}

struct BloodView_Previews: PreviewProvider {
    static var previews: some View {
        BloodView()
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
