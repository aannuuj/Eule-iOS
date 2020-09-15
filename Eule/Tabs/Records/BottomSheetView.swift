//
//  BottomSheetView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct BottomSheetView: View {
    @State private var Tapped = false
    @State private var ScanTapped = false
//    @State private var Title = ""
//    @State private var CardType1 = ""
//    @State private var CardIcon1 = ""
//    @State private var CardType2 = ""
//    @State private var CardIcon2 = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Add Documents")
                .font(.EuleLabel)
                .foregroundColor(Color.black)
            NavigationLink(destination: AddRecords(), isActive: $Tapped) { EmptyView() }
            NavigationLink(destination: ViewRecords(), isActive: $ScanTapped) { EmptyView() }
            HStack(alignment: .center, spacing: 16){
                Card2(imageName: "Upload", title: "Upload Documents")
                    .cornerRadius(15)
                    .onTapGesture {
                        self.Tapped = true
                }
                Card2(imageName: "Scan", title: "Scan Documents")
                    .cornerRadius(15)
                    .onTapGesture {
                        self.ScanTapped = true
                }
            }
        }.padding()
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView()
    }
}
