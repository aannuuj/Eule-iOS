//
//  UserCard.swift
//  Eule
//
//  Created by Hariom Palkar on 11/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct UserCardView: View {
    var user: User = userData
    var body: some View {
        ZStack(alignment: .leading){
            HStack(alignment: .center){
                HStack{
                    Image(user.profilePicture)
                    .clipped()
                    Text(user.name)
                    .foregroundColor(.white)
                Spacer()
                }
                .padding(.all, 16)
            }
            .frame(width: (UIScreen.main.bounds.width - 32), height: (UIScreen.main.bounds.height/5))
            .background(Color(.EuleGreen))
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.05),radius: 5)
            
        }
    }
}

struct UserCard_Previews: PreviewProvider {
    static var previews: some View {
        UserCardView()
    }
}
