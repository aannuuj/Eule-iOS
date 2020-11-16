//
//  Payments.swift
//  Eule
//
//  Created by Hariom Palkar on 11/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI


struct Payments: View {
    @State public var Tapped = false
    @State public var Payment = false
    @State public var PayeImage = "icici"
    @State public var Note = "Icici"
    @State public var Amount = ""
    @State public var Name = "Icici"
    
    var body: some View {
        
        ZStack{
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 15){
//                NavigationLink(destination: AddPayCard(), isActive: $Tapped) { EmptyView() }
                
                NavigationLink(destination: Pay(PayeImage: $PayeImage, Name: $Name, Amount: $Amount, Note: $Note), isActive: $Payment) { EmptyView() }
                
                HStack(alignment: .center, spacing: 25){
                    Card2(imageName: "UPI", title: "UPI ID or Scan", background: .white)
                        .onTapGesture {
                            self.Tapped = true
                    }
                    Card2(imageName: "Phone", title: "PhoneNumber", background: .white)
                        .onTapGesture {
                            self.Payment = true
                    }
                }
                VStack(alignment: .leading, spacing: 10){
                    Text("Recents")
                        .foregroundColor(.gray)
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(alignment: .center, spacing: 25){
                            ForEach(0 ..< 10) { item in
                                VStack(alignment: .center, spacing: 20){
                                Circle()
                                    .size(width: 80, height: 80)
                                    .foregroundColor(.white)
                                Text("Recent Pay")
                                    .foregroundColor(.gray)
                                    .font(.EuleTitle)
                                    .multilineTextAlignment(.center)
                                }
                                .frame(width: 80, height: 100, alignment: .center)
                                
                            }
                            
                        }.frame(height: 100)
                    }
                }.padding(.leading, 16.0)
                Spacer()
            }
            .navigationBarColor(.EuleBackground)
                .navigationBarItems(trailing:
                    Button(action: { withAnimation {
                   
                    }})
                       {
                    Image("History")
                    })
                .navigationBarTitle("", displayMode: .inline)
            .onAppear(
                // remove bottom sheet
            )
        }
    }
}


struct Payments_Previews: PreviewProvider {
    static var previews: some View {
        Payments()
    }
}
