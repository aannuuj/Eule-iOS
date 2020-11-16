//
//  AddCard.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AddCard: View {
    var body: some View {
        VStack(alignment: .center){
        Image("Add")
        }
        .frame(width: 120, height: 120)
        .background(Color(.white))
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.05),radius: 5)
    }
}

struct AddCard_Previews: PreviewProvider {
    static var previews: some View {
        AddCard()
            .previewLayout(.sizeThatFits)
    }
}


