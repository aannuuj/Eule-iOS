//
//  GoalsView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct GoalsView: View {
     @State var addGoalsScreen = false
       @State private var Tapped = false
    var goals: [Goals] = goalsList
     var body: some View {
         VStack(alignment: .leading){
             HStack{
                 Text("Goals")
                     .font(.EuleTitle)
                     .foregroundColor(.gray)
                 Spacer()
                  NavigationLink(destination: AllGoals(), isActive: $Tapped) { EmptyView() }
                              Button(action: {
                                   self.Tapped = true
                              }){
                     Text("All Goals")
                     Image(systemName: "chevron.right")
                         .font(.EuleTitle)
                         .foregroundColor(.EuleGreen)
                     //card view
                 }
                              .padding(.leading)
                              .padding(.trailing)
             }
             ScrollView(.horizontal, showsIndicators: false){
             HStack( spacing: 8){
                 // make a list of cards and fetch
                    ForEach(goals) { item in
                        GoalsCard(goals: item)
                                  }
                AddCard()
                 
                
             }
             }
         }
         .padding(.leading)
         
     }
}

struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsView(goals: goalsList)
        .previewLayout(.sizeThatFits)
    }
}


