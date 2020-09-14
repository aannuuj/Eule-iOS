//
//  ComingSoonView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct ComingSoonView: View {
    @State public var excited : Bool
    var body: some View {
       
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 50){
                    Image("Ill.ComingSoon")
                        .frame(width: (UIScreen.main.bounds.width - 100), height:(UIScreen.main.bounds.height/4) )
                    VStack( spacing: 5){
                        if excited == true{
                            Text("We are as excited as you are!")
                            Text("Keep an eye out on notification.")
                        }
                        else{
                        Text("Its going to be built pretty soon!")
                        Text("Excited?")
                        }
                    }
                    .font(.EuleHeading)
                    .foregroundColor(.EuleGreen)
                    HStack( spacing: 15){
                        Button(action: {
                            self.excited = true
                        }){
                            Text("Yes ;)")
                                .font(.EuleLabel)
                                .foregroundColor(.white)
                        }
                        .frame(width: (UIScreen.main.bounds.width/3), height: 44, alignment: .center)
                        .background(Color.EuleGreen)
                        .cornerRadius(10)
                        Button(action: {}){
                            Text("Look's Fine")
                                .font(.EuleLabel)
                                .foregroundColor(.EuleGreen)
                            }
                        .frame(width: (UIScreen.main.bounds.width/2.5), height: 44, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                }
                .navigationBarColor(.EuleBackground)
           .navigationBarItems(leading: TitleView(title: "Coming Soon"))
                .navigationBarTitle("", displayMode: .inline)
            
        }
    }
}

struct ComingSoonview_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoonView(excited: false)
    }
}
