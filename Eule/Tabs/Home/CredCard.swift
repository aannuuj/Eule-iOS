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
    @State var cardClass = "Bussiness Elite"
    @State var bankName = "HDFC"
    @State var cardNo = "1155-5555-5555-4521"
    @State var cvv = "115"
    @State var expiry = "2/23"
    @State var cardType = "mastercard"
    @State var flipped = false
    
    var body: some View {
        VStack{
            if flipped == false{
                
                VStack(alignment: .leading){
                    HStack{
                        Text("\(cardClass)")
                        Spacer()
                        Image(bankName)
                    }
                    Spacer()
                    Text("\(cardNo)")
                    HStack{
                        Text("\(expiry)")
                        Spacer()
                        Image(cardType)
                           
                    }
                }.frame(width: screen.width-35, height: screen.height/5, alignment: .center)
                .padding(.all, 20)
                .background(LinearGradient.EuleGradient)
                .cornerRadius(10)
                .foregroundColor(.white)
            }
            else{
                VStack{
                    VStack(){
                        Text("\(cvv)")
                    }
                    .padding(.all)
                    .rotation3DEffect(.degrees( -180.0), axis: (x: 0.0, y: 1.0, z: 0.0))
                }.frame(width: screen.width-35, height: screen.height/5, alignment: .center)
                .background(LinearGradient.EuleGradient)
                .cornerRadius(10)
            }
        }.rotation3DEffect(Angle(degrees: self.flipped ? 180 : 0), axis: (x: 0, y: 1, z:0))
        .onTapGesture { withAnimation(.easeOut(duration : 0.3)){
            self.flipped.toggle()     
        }
        }
        .padding(.all)
    }
}

struct CredCard_Previews: PreviewProvider {
    static var previews: some View {
        CredCard()
    }
}
