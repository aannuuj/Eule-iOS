//
//  GoalsCard.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct GoalsCard: View {
    var goals:Goals
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
                   VStack(alignment: .leading, spacing: 10){
                   HStack{
                       Image(goals.goalType)
                      Spacer()
                   }
                   Spacer()
                   VStack(alignment: .leading, spacing: 2){
                    Text(goals.goalName)
                           .fontWeight(.bold)
                       Text(goals.goalTime)
                           .font(.EuleDesc)
                   }
                   .foregroundColor(Color.black)
                   }.padding(.all , 10 )
                   
               }
               .frame(width: 120, height: 120)
        .background(Color(.white))
           .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.05),radius: 5)
           }
    }

struct GoalsCard_Previews: PreviewProvider {
    static var previews: some View {
        GoalsCard(goals: goalsList[2])
    }
}

