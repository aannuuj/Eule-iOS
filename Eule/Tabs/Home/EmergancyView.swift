//
//  EmergancyView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct EmergancyView: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Text("Emergancy Bulletin")
                        .font(.EuleTitle)
                        .foregroundColor(.gray)
                    Spacer()
                }
                VStack(alignment: .leading){
                    AssistanceView()
                    BloodView()
                }
                .frame(width: 400, height: 100)
                .background(Color.white)
                .cornerRadius(10)
            }
        }
    }
}

struct EmergancyView_Previews: PreviewProvider {
    static var previews: some View {
        EmergancyView()
    }
}



