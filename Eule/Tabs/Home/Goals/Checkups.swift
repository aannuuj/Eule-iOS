//
//  Checkups.swift
//  Eule
//
//  Created by Hariom Palkar on 14/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct Checkups: View {
    @State var addGoalsScreen = false
    @State private var Tapped = false
    var goals: [Goals] = goalsList
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Checkups")
                    .font(.EuleTitle)
                    .foregroundColor(.gray)
                Spacer()
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
    }
}
struct Checkups_Previews: PreviewProvider {
    static var previews: some View {
        Checkups()
    }
}


