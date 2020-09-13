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
//
//    var CardColor : Color = Color(red: <#T##Double#>, green: <#T##Double#>, blue: <#T##Double#>)
    var body: some View {
        GeometryReader { geometry in
            HStack.init(alignment: .center, spacing: 5){
                Image(self.imageName)
                    .renderingMode(.original)
                    .resizable()
                Text(self.cardTitle.uppercased())
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                    .font(.EuleMarketCards)
            }
            .padding(.all)
            .frame(width: geometry.size.width, height: 192)
            .background(Color(red: 0.83, green: 0.72, blue: 0.99))
            
        }.cornerRadius(15)
    }
}

struct MarketCardView_Previews: PreviewProvider {
    static var previews: some View {
        MarketCardView()
    }
}
