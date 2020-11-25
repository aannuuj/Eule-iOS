//
//  Temp.swift
//  Eule
//
//  Created by Hariom Palkar on 16/11/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI



struct Temp: View {
    
    
    @State var cards: [HomeCard] = homeCard
 
    private func getCardWidth(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        let offset: CGFloat = CGFloat(cards.count - 1 - id) * 10
        return geometry.size.width - offset
    }
  
    private func getCardOffset(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        return  CGFloat(cards.count - 1 - id) * -10
    }
    
    private var maxID: Int {
        return self.cards.map { $0.id }.max() ?? 0
    }
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                
                VStack(spacing: 0) {
                    ZStack {
                        ForEach(self.cards, id: \.self) { HomeCard in
                            Group {
                                // Range Operator
                                if (self.maxID - 3)...self.maxID ~= HomeCard.id {
                                    HomeCardView(card: HomeCard, onRemove: { removedUser in
                                        // Remove that user from our array
                                        self.cards.removeAll { $0.id == removedUser.id }
                                    })
                                        .animation(.spring())
                                        .frame(width: self.getCardWidth(geometry, id: HomeCard.id), height: 250)
                                        .offset(x: 0, y: self.getCardOffset(geometry, id: HomeCard.id))
                                }
                            }
                        }
                    }
                   
                }
            }
        }.padding()
    }
}


struct Temp_Previews: PreviewProvider {
    static var previews: some View {
        Temp()
    }
}
