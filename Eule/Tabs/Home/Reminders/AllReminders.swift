//
//  AllReminders.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AllReminders: View {
    @State private var showBottomSheet = false
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        ZStack{
        ZStack{
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading){
                
                ZStack(alignment: .topLeading){
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 20){
                            Spacer()
                            
                            // parse data and more cards
                            //add bottom sheet
                            Upcoming()
                                .padding(.all, 32)
                            Medication()
                                .padding(.leading, 32)
                            Checkups()
                                .padding(.leading, 32)
                        }
                    }
                    
                }
                
             
                
            }
            .navigationBarColor(.EuleBackground)
            .navigationBarItems(leading: TitleView(title: "Reminders"), trailing: Button(action: {
                self.showBottomSheet.toggle()
            }){
                Image("Add")
                    .frame(width: 44, height: 44)
            })
            .navigationBarTitle("",displayMode: .inline)
            
        }
        BottomSheetModal(display: $showBottomSheet) {
            BottomSheetView2()
                .onTapGesture {
                    self.mode.wrappedValue.dismiss()
                
                }
        }
        }
        
    }
}

struct AllReminders_Previews: PreviewProvider {
    static var previews: some View {
        AllReminders()
    }
}
