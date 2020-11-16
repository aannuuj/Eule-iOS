
//  Pay.swift
//  Eule
//
//  Created by Hariom Palkar on 16/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI
import Combine

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
            VStack(alignment: .center, spacing: 50){
                Spacer()
                HStack(alignment: .center){
                    Image("\(PayeImage)")
                    Text("Paying to \(Name)")
                        .frame( alignment: .leading)
                }
                .shadow(color: Color.black.opacity(0.05),radius: 5)
                .frame(width: UIScreen.main.bounds.width - 30, height: 55)
                .background(Color.white)
                .cornerRadius(15)
                VStack(alignment: .center){
                    Text("Amount")
                        .font(.EuleHeading)
                        .foregroundColor(.EuleGreen)
                        HStack {
                            Text("₹")
                                .font(.EuleHeading)
                                .foregroundColor(.gray)
                                .fixedSize()
                            Text("|")
                                .font(.system(.headline, design: .monospaced))
                                .fontWeight(.thin)
                                .foregroundColor(.secondary)
                            TextField("1,00,000", text: self.$Amount)
                                .font(.LargeHeadline)
                                .keyboardType(.numberPad)
                                .fixedSize()
                                .multilineTextAlignment(.center)
                                .onReceive(Just(self.Amount)) { inputValue in
                                            if inputValue.count > 6 {
                                                self.Amount.removeLast()
                                            }
                                        }

                        }
                }
                .padding(.init(top:20, leading: 50, bottom: 0, trailing: 50))
                HStack(alignment: .center){
                    TextField("What is this for ?",text: $Note)
                        .multilineTextAlignment(.center)
                }
                .frame(width: UIScreen.main.bounds.width - 30, height: 55)
                .background(Color.white)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.05),radius: 5)
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
                    }.buttonStyle(EuleGreenButton())
                    .opacity(!(Amount.count < 1) ? 1 : 0.5)
                    .disabled(!(Amount.count < 1) ? false : true)
                    //                .buttonStyle(.EuleGreenButton())
                }
                .navigationBarItems(leading: Text("Payment")
                                        .foregroundColor(.EuleGreen)
                                        .font(.EuleLabel))
                
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
