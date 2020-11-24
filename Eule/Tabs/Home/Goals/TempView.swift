//
//  TempView.swift
//  Eule
//
//  Created by Hariom Palkar on 13/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct TempView: View {
    var goalTitle : String = "hey"
    var goalTime : String = "hey"
    var goalType : String = "Sleeps"
    var backgroundColor: UIColor
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Spacer()
            HStack{
                VStack(alignment: .leading, spacing: 6){
                    Text(goalTitle.uppercased())
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                    Text( goalTime.uppercased())
                        .font(.EuleHeading)
                        .foregroundColor(.white)
                }
                Spacer()
                Image(goalType)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.height/8.4, alignment: .center)
            }
            Spacer()
        }
        .padding(.init(top: 20, leading: 10, bottom: 20, trailing: 10))
        .frame(width: UIScreen.main.bounds.width - 20 , height:  UIScreen.main.bounds.height/4.5 )
        .background(Color(backgroundColor))
        .cornerRadius(15)
    }
}


struct TempView_Previews: PreviewProvider {
    static var previews: some View {
        TempView(goalTitle: "", goalTime: "", goalType: "", backgroundColor: .ProductCardBackGround)
    }
}
