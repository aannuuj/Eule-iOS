
//  Pay.swift
//  Eule
//
//  Created by Hariom Palkar on 16/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct Pay: View {
    @Binding public var PayeImage: String
    @Binding public var Name : String
    @Binding public var Amount : String
    @Binding public var Note : String
    @State public var Tapped = false
    var body: some View {
        ZStack{
            NavigationLink(destination: PayUsing(PayeImage: self.$PayeImage, Name: self.$Name, Amount: self.$Amount, Note: self.$Note), isActive: $Tapped) { EmptyView() }
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 40){
                HStack(alignment: .center){
                    Image("\(PayeImage)")
                    Text("Paying to \(Name)")
                        .frame( alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width - 30, height: 55)
                .background(Color.white)
                .cornerRadius(15)
                VStack(alignment: .center){
                    Text("Amount")
                        .font(.EuleHeading)
                        .foregroundColor(.EuleGreen)
                    TextField("1,00,000",text: $Amount)
                        .font(.EuleBulkHeading)
                        .accentColor(.EuleGreen)
                }.padding(.init(top:20, leading: 50, bottom: 0, trailing: 50))
                HStack(alignment: .center){
                    TextField("What is this for",text: $Note)
                }
                
                .frame(width: UIScreen.main.bounds.width - 30, height: 55)
                .background(Color.white)
                .cornerRadius(15)
                Spacer()
                VStack{
                    Button(action: {})
                    {
                        Text("Need Help?")
                            .font(.EuleTitle)
                            .foregroundColor(.gray)
                    }
                    
                    Button(action: {
                        self.Tapped = true
                    }){
                        Text("Proceed")
                    }
                    //                .buttonStyle(.EuleGreenButton())
                }
                
                //                            NavigationLink(destination: AddPayCard(), isActive: $Tapped) { EmptyView() }
                //                            NavigationLink(destination: Pay(), isActive: $Tapped) { EmptyView() }
                
            }
        }
        
    }
}



struct Pay_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
