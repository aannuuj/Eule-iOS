//
//  ExcitedView.swift
//  Eule
//
//  Created by Hariom Palkar on 15/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct ExcitedView: View {
    var body: some View {
        ZStack{
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 50){
                Image("Ill.Excited")
                    .resizable()
                    .frame(width: (UIScreen.main.bounds.width - 80), height:(UIScreen.main.bounds.height/3.5) )
                
                VStack( spacing: 20){
                    Text("Tadda, Coming real soon ;)")
                    
                    Text("We are racing towards it at \n break neck speed just for you \n and are as excited as you.")
                }.multilineTextAlignment(.center) .font(.EuleHeading).foregroundColor(.EuleGreen)
            }
        }
    }
}

struct ExcitedView_Previews: PreviewProvider {
    static var previews: some View {
        ExcitedView()
    }
}
