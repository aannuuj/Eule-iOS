//
//  AllReminders.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AllReminders: View {
    var body: some View {
        
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
            .navigationBarItems(leading: TitleView(title: "Reminders"))
            .navigationBarTitle("",displayMode: .inline)
            
        }
        
        
    }
}

struct AllReminders_Previews: PreviewProvider {
    static var previews: some View {
        AllReminders()
    }
}
