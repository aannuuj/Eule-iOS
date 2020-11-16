//
//  RemindersView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct RemindersView: View {
   @State private var Tapped = false
    var reminders: [Reminders] = reminderList
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Reminders")
                    .font(.EuleTitle)
                    .foregroundColor(.gray)
                Spacer()
                 NavigationLink(destination: AllReminders(), isActive: $Tapped) { EmptyView() }
                Button(action: {
                     self.Tapped = true
                }){
                    Text("All Reminders")
                    Image(systemName: "chevron.right")
                        .font(.EuleTitle)
                        .foregroundColor(.EuleGreen)
                    //card view
                }.padding(.leading)
                .padding(.trailing)
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .center, spacing: 8){
                // make a list of cards and fetch
                ForEach(reminders) { item in
                    Card(reminder: item, size: 120)
                }
                    AddCard()
            }
            }
            
        }.padding(.leading)
        
    }
}

struct RemindersView_Previews: PreviewProvider {
    static var previews: some View {
        RemindersView(reminders: reminderList)
            .previewLayout(.sizeThatFits)
    }
}
