//
//  ProductView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct ProductView: View {
    var productImage = "product"
    var brandName = "Eule Orignals"
    var brandLogo = "product.logo"
    var productTitle = "Finally an oil for men to make \nyour skin amazing"
    var ProductDesc = "The only organic use of Avocado and\nPomegrante to make you the best."
    var units = "Limited Units"
    var cost = "10,000"
    var body: some View {
        NavigationView{
            
            ZStack{
              Color(red: 0.55, green: 0.473, blue: 0.396).edgesIgnoringSafeArea(.all)
                Image(productImage)
                VStack(alignment: .leading, spacing: 15){
                    Spacer()
                        .padding(.all, 15)
                        .frame(height: 50)
                    HStack{
                        VStack{
                            Image(brandLogo)
                            Text(brandName)
                        }
                        Spacer()
                        Button(action:{}){
                            Image("Market.Like")
                                .renderingMode(.original)
                        }
                        Button(action:{}){
                            Image("Market.Save")
                               .renderingMode(.original)
                        }
                        Button(action:{}){
                            Image("Market.Share")
                               .renderingMode(.original)
                        }
                        
                    }
                    .offset(y: 100)
                    
                    Text(productTitle)
                        .font(.EuleLabel)
                        .foregroundColor(Color(red: 0.55, green: 0.473, blue: 0.396))
                        .offset(y: 100)
                    Text(ProductDesc)
                        .font(.EuleDesc)
                        .foregroundColor(Color(red: 0.55, green: 0.473, blue: 0.396))
                        .offset(y: 100)
                    Text(units)
                        .font(.EuleLabel)
                        .foregroundColor(Color(red: 0.55, green: 0.473, blue: 0.396))
//                        .clipShape(Capsule)
                        .offset(y: 150)
                    HStack{
                        Image("Product.Chips")
                        Text(cost)
                            .font(.EuleLabel)
                            .foregroundColor(Color(red: 0.55, green: 0.473, blue: 0.396))
                        
                    } .offset(y: 150)
                    Button(action:{}){
                        Text("Get It Now".uppercased())
                    }
                        
                    .frame(maxWidth: .infinity, maxHeight: 44)
                    .foregroundColor(.white)
                    .background(Color(red: 0.55, green: 0.473, blue: 0.396))
                    .cornerRadius(5)
                    .offset(y: 170)
                }.padding(.all)
            }
            .navigationBarColor(.EuleBackground)
            .navigationBarTitle("", displayMode: .inline)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
