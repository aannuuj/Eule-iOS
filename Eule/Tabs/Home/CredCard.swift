//
//  CredCard.swift
//  Eule
//
//  Created by Hariom Palkar on 21/11/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct CredCard: View {
    var screen =  UIScreen.main.bounds
    //MARK: static data
    @State var cardClass = "Bussiness Elite"
    @State var bankName = "HDFC"
    @State var cardNo = "1155-5555-5555-4521"
    @State var cvv = "115"
    @State var expiry = "2/23"
    @State var cardType = "mastercard"
    @State var name = "John Snow"
    //MARK: property wrapper
    @State var flipped = false
    @State var showText = false
  
    
    var body: some View {
        VStack{
            // case to toggle
            if flipped == false{
                //MARK: front view
                VStack(alignment: .leading, spacing: 10){
                    HStack(alignment: .top){
                        Text(cardClass.uppercased())
                        Spacer()
                        Image(bankName)
                    }
                    Image("CardChip")
                        .resizable()
                        .frame(width: 40, height: 20)
                    VStack(alignment: .leading, spacing: 0){
                        Text(cardNo)
                        HStack(alignment: .center, spacing: 30){
                            Text(name)
                            Text(expiry)
                            Spacer()
                            Image(cardType)
                        }
                    }
                }
                // MARK: styling
                .frame(width: screen.width/1.35, height: screen.height/5, alignment: .center)
                .padding(.all, 10)
                .background(LinearGradient.BackgroundGradient)
                .cornerRadius(10)
            }
            else{
                // MARK: back card view
                VStack{
                    VStack(){
                        ZStack(alignment: .bottom){
                            Rectangle()
                                .frame(width: screen.width, height: screen.height/25)
                                .overlay(LinearGradient.CVVGradient)
                            HStack(alignment: .center){
                                Text(showText ? "CVV \(cvv)" : "CVV xxx")
                                // button to view cvv
                                // auth with local auth before showing this.
                                Button(action: {self.showText.toggle()}){
                                    Image(showText ? "eye-off" : "eye-on")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                }
                            }
                        }.padding(.bottom, 50)
                    }
                    .padding(.all)
                    // to invert the back card view when it flips.
                    .rotation3DEffect(.degrees( -180.0), axis: (x: 0.0, y: 1.0, z: 0.0))
                }.frame(width: screen.width/1.35, height: screen.height/5, alignment: .center)
                .background(LinearGradient.BackgroundGradient)
                .cornerRadius(10)
            }
        }
        // MARK: rotation effect
        .rotation3DEffect(Angle(degrees: self.flipped ? 180 : 0), axis: (x: 0, y: 1, z:0))
        .onTapGesture {
            withAnimation(.spring(response: 0.1, dampingFraction: 2.0, blendDuration: 2.0)){
                self.flipped.toggle()
            }
        }
        .foregroundColor(.white)
        .font(.caption)
    }
}
struct CredCard_Previews: PreviewProvider {
    static var previews: some View {
        CredCard()
    }
}
