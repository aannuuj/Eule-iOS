//
//  ColourConstants.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import SwiftUI

extension Color {
    static var EuleGreen: Color {
        return Color(red:0.11, green:0.91, blue:0.72)
    }
    static var EuleBlue: Color{
        return Color(red: 0.148, green: 0.887, blue: 0.843)
    }
    static var EuleBackground: Color{
        return Color(red: 0.95, green: 0.99, blue: 0.98)
    }
    static var EuleCardBackGround: UIColor{
        return UIColor(red:0.11, green:0.91, blue:0.72, alpha: 1.00)
    }
    static var EuleAssistance: Color{
           return Color(red: 0.88, green: 0.29, blue: 0.16)
       }
 static var EuleText: UIColor{
        return UIColor(red: 196, green: 196, blue: 196, alpha: 1.00)
    }

}
extension UIColor {
    static var EuleGreen: UIColor {
        return UIColor(red:0.11, green:0.91, blue:0.72, alpha: 1.00)
    }
    static var EuleBlue: UIColor{
        return UIColor(red: 0.148, green: 0.887, blue: 0.843, alpha: 1.00)
    }
    static var EuleBackground: UIColor{
        return UIColor(red: 0.95, green: 0.99, blue: 0.98, alpha: 1.00)
    }
    static var ProductCardBackGround: UIColor{
           return UIColor(red:0.83, green:0.72, blue:0.99, alpha: 1.00)
       }
    static var CouponsCardBackGround: UIColor{
              return UIColor(red: 0.98, green: 0.754, blue: 0.698, alpha: 1.00)
          }
    static var RiskGamesCardBackGround: UIColor{
              return UIColor(red: 0.95, green:0.87, blue:0.67, alpha: 1.00)
          }
    static var Card1: UIColor{
              return UIColor(red:0.90, green:0.84, blue:0.52
                , alpha: 1.00)
          }
    
    static var EuleAssistance: UIColor{
           return UIColor(red: 0.88, green: 0.29, blue: 0.16, alpha: 1.00)
       }
    static var EuleText: UIColor{
           return UIColor(red: 196, green: 196, blue: 196, alpha: 1.00)
       }
    static var BloodBackground: UIColor{
        return UIColor(red: 0.945, green: 0.984, blue: 0.98, alpha: 1.00)
          }
    static var EuleWhite: UIColor{
        return UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.00)
          }
 
}


extension LinearGradient{
    static var EuleGradient: LinearGradient{
        return LinearGradient(gradient: Gradient(colors: [.EuleGreen, .EuleBlue]), startPoint: .leading, endPoint: .trailing)
    }
}


