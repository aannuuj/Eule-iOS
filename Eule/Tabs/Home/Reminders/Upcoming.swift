//
//  Upcoming.swift
//  Eule
//
//  Created by Hariom Palkar on 14/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct Upcoming: View {
    let size = UIScreen.main.bounds.width/2.3
    var reminder: [Reminders] = reminderList
    @State var range: Range<Int> = 0..<3
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Upcoming")
                .font(.EuleTitle)
                .foregroundColor(.gray)
            HStack(alignment: .center, spacing: 30){
                
                Card(reminder: reminderList[0], size: size)
                Card(reminder: reminderList[1], size:size)
            }
        }
    }
}

struct Upcoming_Previews: PreviewProvider {
    static var previews: some View {
        Upcoming()
    }
}



//ForEach(range, id: \.self) {
//
//}
