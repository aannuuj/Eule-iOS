//
//  AllPrescriptionsView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AllPrescriptionsView: View {
    @State private var showBottomSheet = false
    @State public var text = ""
    var labReports: [Reminders] = reminderList
    var body: some View {
        
        ZStack{
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            VStack(alignment: .trailing){
                HStack(alignment: .center, spacing: 5){
                    HStack(alignment: .center, spacing: 0){
                        Button(action: {}){
                            Image(systemName: "magnifyingglass")
                            TextField("Search", text: $text)
                                .foregroundColor(.white)
                            
                        }
                        .padding(.all)
                        .frame(width: UIScreen.main.bounds.width/2.5, height: 44)
                        .background(Color(.EuleGreen))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.all)
                    }
                    HStack(alignment: .center, spacing: 30){
                        Button(action: {}){
                            Image(systemName: "chevron.up")
                            Text("Date")
                        }
                        .frame(width: UIScreen.main.bounds.width/2.5, height: 44)
                        .background(Color(.EuleGreen))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.all)
                    }
                }.padding(.all, 10)
                
                ZStack(alignment: .topLeading){
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 8){
                            Spacer()
                            ForEach(labReports) { item in
                                RecordsCard(labReport: item)
                            }
                        }
                        
                    }   .padding(.init(top:0, leading: 10, bottom: 0, trailing: 10))
                    
                    BottomSheetModal(display: $showBottomSheet) {
                        BottomSheetView()
                    }
                    
                }
                
            }
        }    .padding(.init(top: 0, leading: 16, bottom: 0, trailing: 16))
            
            .navigationBarColor(.EuleBackground)
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(leading: TitleView(title: "Prescriptions"),trailing:   Button(action: {
                withAnimation {
                    self.showBottomSheet.toggle()
                }
            })
            {
                Image("Add")
            }  )
    }
    
    
}

struct AllPrescriptionsView_Previews: PreviewProvider {
    static var previews: some View {
        AllPrescriptionsView()
    }
}
