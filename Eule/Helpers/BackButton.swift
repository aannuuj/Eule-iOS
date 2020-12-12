//
//  BackButton.swift
//  Eule
//
//  Created by Hariom Palkar on 15/11/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    let label: String
    var body: some View {
        HStack {
            Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Image(systemName: "chevron.left")
            }
            Text(label)
        }.foregroundColor(Color.EuleGreen)
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton(label: "")
    }
}


