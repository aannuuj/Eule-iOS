//
//  AssistanceView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AssistanceView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Image("Emergancy.Assistance")
                .renderingMode(.original)
                .frame(width: 24, height: 24)
                
            Text("Alex requires assistance")
                .font(.EuleLabelBold)
                .foregroundColor(.EuleAssistance)
            Spacer()
        }.background(Color(.white))
        .padding(.init(top: 10, leading: 10, bottom: 20, trailing: 10))
    }
}

struct AssistanceView_Previews: PreviewProvider {
    static var previews: some View {
        AssistanceView()
    }
}
