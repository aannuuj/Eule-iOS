//
//  ComingSoonDecider.swift
//  Eule
//
//  Created by Hariom Palkar on 15/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct ComingSoonDecider: View {
    
    @State var excited = UserDefaults.standard.value(forKey: "excited") as? Bool ?? false
    var body: some View {
        ZStack{
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            VStack{
                if excited{
                    ExcitedView()
                }
                else {
                    NavigationView{
                        ComingSoonView()
                    }
                }
            }.onAppear {
                NotificationCenter.default.addObserver(forName: NSNotification.Name("excitedChange"), object: nil, queue: .main) { (_) in
                    
                    let excited = UserDefaults.standard.value(forKey: "excited") as? Bool ?? false
                    self.excited = excited
                }
            }
        } .navigationBarColor(.EuleBackground)
            .navigationBarItems(leading: TitleView(title: "Coming Soon"))
            .navigationBarTitle("", displayMode: .inline)
    }
}

struct ComingSoonDecider_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoonDecider()
    }
}
