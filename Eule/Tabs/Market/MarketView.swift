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
                VStack(alignment: .leading,spacing: 5){
                    NavigationLink(destination: ProductView()) {
                        MarketCardView(imageName: "Market.Product", cardTitle: "Products")
                    }
                    NavigationLink(destination: ComingSoonView()) {
                        MarketCardView(imageName: "Market.RiskGames", cardTitle: "Risk\nGames")
                    }
                    
                     NavigationLink(destination: ComingSoonView()) {
                    MarketCardView(imageName: "Market.Coupons", cardTitle: "Coupons")
                    }
                }
                .padding(.all, 15)
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


