//
//  FontConstants.swift
//  Eule
//
//  Created by Hariom Palkar on 03/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import SwiftUI

fileprivate func EuleFont(_ weight: Font.Weight = .regular, _ size: CGFloat = 14) -> Font {
    return Font.custom("Inter", size: size).weight(weight)
}


extension Font{
    static var EuleHeading: Font{
        return  EuleFont(.bold, 22)
    }
    static var EuleBulkHeading: Font{
        return  EuleFont(.bold, 28)
    }
    
    static var EuleTitle: Font{
        return EuleFont(.regular, 14)
    
    }
    static var EuleTitle2: Font{
        return EuleFont(.regular, 16)
    }
    static var EuleTitle3: Font{
        return EuleFont(.bold, 16)
    }
    static var  EuleTabBar: Font{
           return EuleFont(.medium, 12)
       }
    //market place
   static var LargeHeadline: Font{
    return  EuleFont(.heavy, 24)
   }
    static var EuleLabel: Font{
          return  EuleFont(.medium, 18)
      }
    static var EuleLabelBold: Font{
        return  EuleFont(.bold, 18)
    }
    static var EuleDesc: Font{
            return  EuleFont(.light, 12)
        }
}
