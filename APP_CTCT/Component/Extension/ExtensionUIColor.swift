//
//  ExtensionUIColor.swift
//  APP_CTCT
//
//  Created by vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit


extension UIColor {
    convenience init(hex: UInt32, alpha: CGFloat) {
        let red = CGFloat((hex & 0xFF0000) >> 16)/256.0
        let green = CGFloat((hex & 0xFF00) >> 8)/256.0
        let blue = CGFloat(hex & 0xFF)/256.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    convenience init(hexString : String)
    {
        if let rgbValue = UInt(hexString, radix: 16) {
            let red   =  CGFloat((rgbValue >> 16) & 0xff) / 255
            let green =  CGFloat((rgbValue >>  8) & 0xff) / 255
            let blue  =  CGFloat((rgbValue      ) & 0xff) / 255
            self.init(red: red, green: green, blue: blue, alpha: 1.0)
        } else {
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        }
    }
    
    class var huasingOrange: UIColor {
        get {
            return UIColor(hexString: "FC7521")
        }
    }
    
    class var huasingGray: UIColor {
        get {
            return UIColor(hexString: "484848")
        }
    }
    
    class var cF1F1F1 : UIColor {
        return UIColor(hexString: "F1F1F1")
    }
    
    class var cD5D5D5 : UIColor {
        return UIColor(hexString: "D5D5D5")
    }
}

