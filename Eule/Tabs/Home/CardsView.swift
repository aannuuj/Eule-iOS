//
//  CardsView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct CardsView: View {
    var image: String
    var title: String
    var desc: String
    var body: some View {
        ZStack{
            Image("\(image)")
                .resizable()
            VStack(alignment: .leading, spacing: 6){
                Text("\(title)")
                    .font(.EuleHeading)
                
                Text("\(desc)")
                    .font(.EuleTitle)
            }
            .foregroundColor(.white)
            .padding(.all, 50)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200)
        .cornerRadius(18)
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView(image: "BackgroundImage", title: "Optimisim can help you bka bka bla", desc: "Some njedbnzxjkf dzfnsz dcdzgb")
    }
}
