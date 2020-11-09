//
//  IconView.swift
//  Eule
//
//  Created by Hariom Palkar on 09/11/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import SwiftUI

struct IconView: View {
@EnvironmentObject var iconSettings : IconNames

    var body: some View {
        NavigationView {
            Form {
                    Picker(selection: $iconSettings.currentIndex, label: Text("Icon"))
                    {
                        ForEach(0..<iconSettings.iconNames.count) { index in
                            HStack{
                                Image(uiImage: UIImage(named: self.iconSettings.iconNames[index] ?? "Default") ?? UIImage())
                                    .renderingMode(.original) //important
                                   
                                    .cornerRadius(5)
                                Text(self.iconSettings.iconNames[index] ?? "Stock")
                                    .frame(minWidth : 100, alignment: .leading)
                            }
                        }
                    }.onReceive([self.iconSettings.currentIndex].publisher.first()) { (value) in

                        let index = self.iconSettings.iconNames.firstIndex(of: UIApplication.shared.alternateIconName) ?? 0

                        if index != value{
 
                            UIApplication.shared.setAlternateIconName(self.iconSettings.iconNames[value]){ error in
                                if let error = error {
                                    print(error.localizedDescription)
                                } else {
                                    print("Success!")
                                }
                            }
                        
                    }
                }

            } .navigationBarTitle("AppIcon", displayMode: .inline)

        }
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
    }
}
