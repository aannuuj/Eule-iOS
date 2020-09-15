//
//  AllGoals.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AllGoals: View {
    @State public var text = ""
    @State var addGoalsScreen = false
//    var goals: [Goals] = goalsList
    var body: some View {
        
        ZStack{
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false){
                Spacer()
                    .frame(height: 20)
            VStack(alignment: .leading, spacing: 16){
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    TempView(goalTitle: "Sleep", goalTime: "8 hr", goalType: "Ill.Sleep", backgroundColor: .Card1)
                }
            }
        }    .padding(.init(top: 0, leading: 16, bottom: 0, trailing: 16))
        }
            .navigationBarColor(.EuleBackground)
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(leading: TitleView(title: "Goals"),trailing:   Button(action: {
                
                    self.addGoalsScreen.toggle()
            })
            {
                Image("Add")
            }.sheet(isPresented: $addGoalsScreen) {
                AddGoals()
            }  )
    }
}

struct AllGoals_Previews: PreviewProvider {
    static var previews: some View {
        AllGoals()
    }
}

