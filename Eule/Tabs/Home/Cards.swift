//
//  Cards.swift
//  Eule
//
//  Created by Hariom Palkar on 11/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct Card: View {
    var reminder:Reminders
    var size: CGFloat
//    let type = "FAQ"
//    let consumptionTime = "FAQ"
//    let title = "Crocine"
//    let time = "10:00"
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            VStack(alignment: .leading, spacing: 10){
            HStack{
                Image(reminder.reminderType)
                Spacer()
                Image(reminder.intakeTime)
            }
            Spacer()
            VStack(alignment: .leading, spacing: 2){
                Text(reminder.reminderName)
                    .fontWeight(.bold)
                Text(reminder.reminderTime)
                    .font(.EuleDesc)
            }
//            .foregroundColor("\(reminder.foregroundColor)")
            }.padding(.all , 10 )
            
        }
        .frame(width: size, height: size)
//        .background(Color(reminder.cardColor))
    .cornerRadius(10)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(reminder: reminderList[3], size: 120)
            .previewLayout(.sizeThatFits)
    }
}
