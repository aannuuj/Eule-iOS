//
//  AllGoals.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AllGoals: View {
    @State var addGoalsScreen = false
    var goals: [Goals] = goalsList
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        ZStack{
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(goals, id: \.self) { item in
                        GoalsCard(goals: item, allViews: true)
                    }
                }
            }    .padding(.init(top: 20, leading: 16, bottom: 0, trailing: 16))
        }
        .navigationBarColor(.EuleBackground)
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarItems(
            leading: TitleView(title: "Goals"),
            trailing: Button(action:{self.addGoalsScreen.toggle()}){
                Image("Add")
            }
            .sheet(isPresented: $addGoalsScreen) {
                AddGoals()
            })
    }
}

struct AllGoals_Previews: PreviewProvider {
    static var previews: some View {
        AllGoals()
    }
}

