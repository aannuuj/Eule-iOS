//
//  MarketRightView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct MarketRightView: View {
    var body: some View {
        HStack{
        
            Image("Market.Chips")
            .previewLayout(.sizeThatFits)
            //dynamicly load coins
            Text("5749")
                .padding(.trailing, 20)
                .foregroundColor(.EuleGreen)
                .font(.EuleHeading)
           
        }
    }
}

struct MarketRightView_Previews: PreviewProvider {
    static var previews: some View {
        MarketRightView()
            .previewLayout(.sizeThatFits)
    }
}
