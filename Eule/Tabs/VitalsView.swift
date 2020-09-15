//
//  VitalsView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct VitalsView: View {
    @State private var Tapped = false
    var vitals: [Reminders] = reminderList
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Vital Signs")
                    .font(.EuleTitle)
                    .foregroundColor(.gray)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .center, spacing: 8){
                    ForEach(vitals) { item in
                        Card(reminder: item, size: 120)
                    }
                }
            }
        }
    }
}


struct VitalsView_Previews: PreviewProvider {
    static var previews: some View {
        VitalsView()
            .previewLayout(.sizeThatFits)
    }
}
