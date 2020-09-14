//
//  UserCard.swift
//  Eule
//
//  Created by Hariom Palkar on 11/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct UserCardView: View {
    var userImage = "User.Image"
    var userName = "Jhon Snow"
    var body: some View {
        ZStack(alignment: .leading){
            HStack(alignment: .center){
                HStack{
                Image(userImage)
                    .clipped()
                Text("\(userName)")
                    .foregroundColor(.white)
                Spacer()
                }
                .padding(.all, 16)
            }
            .frame(width: (UIScreen.main.bounds.width - 32), height: (UIScreen.main.bounds.height/5))
            .background(Color(.EuleGreen))
            .cornerRadius(15)
            
        }
    }
}

struct UserCard_Previews: PreviewProvider {
    static var previews: some View {
        UserCardView()
    }
}
