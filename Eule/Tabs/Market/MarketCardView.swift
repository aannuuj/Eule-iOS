//
//  MarketCardView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct MarketCardView: View {
    var imageName = ""
    var cardTitle = ""
    var CardColor: UIColor
//
//    var CardColor : Color = Color(red: <#T##Double#>, green: <#T##Double#>, blue: <#T##Double#>)
    var body: some View {
        
            HStack.init(alignment: .center, spacing: 5){
                Image(self.imageName)
                    .renderingMode(.original)
                    .resizable()
                .frame(height: ( UIScreen.main.bounds.height/4))
                Text(self.cardTitle.uppercased())
                    .frame(alignment: .center)
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                    .font(.EuleMarketCards)
    
            }
            .padding(.trailing)
            .frame(width: ( UIScreen.main.bounds.width - 20), height: ( UIScreen.main.bounds.height/4.3))
            .background(Color(CardColor))
            .cornerRadius(15)
        
    }
}

struct MarketCardView_Previews: PreviewProvider {
    static var previews: some View {
        MarketCardView( CardColor: .ProductCardBackGround)
    }
}
