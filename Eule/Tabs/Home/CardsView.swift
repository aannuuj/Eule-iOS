//
//  CardsView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct CardsView: View {
    var body: some View {
        ZStack{
            StaticCard()
            Temp()
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 250, maxHeight: 250)
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
struct StaticCard: View {
    var body: some View {
        ZStack{
            Image("BackgroundImage")
                .frame(height: 250)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 250, maxHeight: 250)
    }
}
