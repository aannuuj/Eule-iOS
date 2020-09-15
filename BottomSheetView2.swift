//
//  BottomSheetView2.swift
//  Eule
//
//  Created by Hariom Palkar on 15/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct BottomSheetView2: View {
    @State private var Tapped = false
    @State private var ScanTapped = false
//    @State private var Title = ""
//    @State private var CardType1 = ""
//    @State private var CardIcon1 = ""
//    @State private var CardType2 = ""
//    @State private var CardIcon2 = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Select Reminder")
                .font(.EuleLabel)
                .foregroundColor(Color.black)
            NavigationLink(destination: AddCheckups(), isActive: $Tapped) { EmptyView() }
            NavigationLink(destination: AddReminders(), isActive: $ScanTapped) { EmptyView() }
            HStack(alignment: .center, spacing: 16){
                Card2(imageName: "Checkups", title: "Check-ups")
                    .cornerRadius(15)
                    .onTapGesture {
                        self.Tapped = true
                }
                Card2(imageName: "Medicine", title: "Medicine")
                    .cornerRadius(15)
                    .onTapGesture {
                        self.ScanTapped = true
                }
            }
        }.padding()
    }
}

struct BottomSheetView2_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView2()
    }
}
