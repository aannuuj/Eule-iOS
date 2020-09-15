//
//  MarketView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct MarketView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading,spacing: 16){
                    NavigationLink(destination: ProductView()) {
                        MarketCardView(imageName: "Market.Product", cardTitle: "Products", CardColor: .ProductCardBackGround)
                    }
                    NavigationLink(destination: ComingSoonView()) {
                        MarketCardView(imageName: "Market.RiskGames", cardTitle: "Risk\nGames", CardColor: .RiskGamesCardBackGround)
                    }
                    
                    NavigationLink(destination: ComingSoonView()) {
                        MarketCardView(imageName: "Market.Coupons", cardTitle: "Coupons", CardColor: .CouponsCardBackGround)
                    }
                }
                .padding(.all, 15)
                    Spacer()
                        .frame( height: 100 )
                    Text("That's Not all.")
                        .font(.EuleHeading)
                        .foregroundColor(.EuleGreen)
                    Text("More things coming in soon.")
                    .font(.EuleLabel)
                    .foregroundColor(.gray)
            }
            }
                
            .navigationBarColor(.EuleBackground)
            .navigationBarItems(leading: MarketLeftView(),trailing: MarketRightView())
            .navigationBarTitle("",displayMode: .inline)
        }
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}


