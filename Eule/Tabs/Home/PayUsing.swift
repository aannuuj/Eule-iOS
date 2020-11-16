//
//  PayUsing.swift
//  Eule
//
//  Created by Hariom Palkar on 16/11/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//


import SwiftUI

struct PayUsing: View {
    @Binding public var PayeImage: String
    @Binding public var Name : String
    @Binding public var Amount : String
    @Binding public var Note : String
    @State public var Tapped = false
    var body: some View {
        ZStack{
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 40){
                HStack(alignment: .center){
                    Image("\(PayeImage)")
                    Text("Paying to \(Name)")
                        .frame( alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width - 30, height: 55)
                .background(Color.white)
                .cornerRadius(15)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("UPI")
                        .foregroundColor(.gray)
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(alignment: .center, spacing: 25){
                            ForEach(0 ..< 10) { item in
                                VStack(alignment: .center, spacing: 20){
                                    Circle()
                                        .size(width: 80, height: 80)
                                        .foregroundColor(.white)
                                    Text("GPay")
                                        .foregroundColor(.gray)
                                        .font(.EuleTitle)
                                        .multilineTextAlignment(.center)
                                }
                                .frame(width: 80, height: 100, alignment: .center)
                                
                            }
                            
                        }.frame(height: 100)
                    }
                }.padding(.leading, 16.0)
                VStack(alignment: .leading, spacing: 10){
                    Text("Cards")
                        .foregroundColor(.gray)
                    ScrollView(.horizontal,showsIndicators: false){
//                        HStack(alignment: .center, spacing: 25){
//                            ForEach(0 ..< 10) { item in
//                                VStack(alignment: .center, spacing: 20){
//                                    CardViewTemp()
//
//                                }
//
//                            }
//
//                        }
                    }
                }.padding(.leading, 16.0)
                VStack(alignment: .leading, spacing: 10){
                                 Text("Net Banking")
                                     .foregroundColor(.gray)
                                 ScrollView(.horizontal,showsIndicators: false){
                                     HStack(alignment: .center, spacing: 25){
//                                         ForEach(0 ..< 10) { item in
//                                             VStack(alignment: .center, spacing: 20){
//                                                NetBanking(background: .white)
//                                             }
//
//                                         }
//
//                                     }
                                 }
                             }.padding(.leading, 16.0)
                }
//                 NavigationLink(destination: PaymentDecider(), isActive: $Tapped) { EmptyView() }
                
            }.onTapGesture {
                self.Tapped = true
                }
                //                            NavigationLink(destination: AddPayCard(), isActive: $Tapped) { EmptyView() }
                //                            NavigationLink(destination: Pay(), isActive: $Tapped) { EmptyView() }
                
            }
        }
        
    }
}

