//
//   LabRecordsView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct LabRecordsView: View {
    @State private var Tapped = false
    @State var range: Range<Int> = 0..<3
    var labReports: [Report] = reportData
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("LabReports")
                    .font(.EuleTitle)
                    .foregroundColor(.gray)
                Spacer()
                NavigationLink(destination: AllRecords(), isActive: $Tapped) { EmptyView() }
                Button(action: {
                    self.Tapped = true
                }){
                    Text("All Reports")
                    Image(systemName: "chevron.right")
                        .font(.EuleTitle)
                        .foregroundColor(.EuleGreen)
                    //card view
                }
            }
            
            VStack(alignment: .center, spacing: 8){
                ForEach(labReports) { item in
                    RecordsCard(labReport: item)
                }
                
            }
            } 
       
    }
}

struct LabRecordsView_Previews: PreviewProvider {
    static var previews: some View {
        LabRecordsView()
    }
}
