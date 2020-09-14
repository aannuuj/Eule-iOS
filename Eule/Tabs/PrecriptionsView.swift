//
//  PrecriptionsView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct PrecriptionsView: View {
    
     @State private var Tapped = false
       @State var range: Range<Int> = 0..<3
          var labReports: [Reminders] = reminderList
          var body: some View {
              VStack(alignment: .leading){
                  HStack{
                      Text("Prescriptions")
                          .font(.EuleTitle)
                          .foregroundColor(.gray)
                      Spacer()
                      NavigationLink(destination: AllPrescriptionsView(), isActive: $Tapped) { EmptyView() }
                      Button(action: {
                          self.Tapped = true
                      }){
                          Text("All Prescriptions")
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

struct PrecriptionsView_Previews: PreviewProvider {
    static var previews: some View {
        PrecriptionsView()
    }
}
