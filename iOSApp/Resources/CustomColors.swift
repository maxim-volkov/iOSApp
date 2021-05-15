//
//  CustomColors.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import UIKit.UIColor


extension UIColor {

    class var appBlackBrandColor: UIColor {
        return UIColor { $0.userInterfaceStyle == .light ? appDarkColor : appBrandColor }
    }
    
    class var appDyanmicGrayColor: UIColor {
        return UIColor { $0.userInterfaceStyle == .light ? appLightGrayColor : appGrayColor }
    }
    
    class var appDyanmicClearGrayColor: UIColor {
        return UIColor { $0.userInterfaceStyle == .light ? UIColor.clear : appGrayColor }
    }
    class var appGrayWhiteColor: UIColor {
        return UIColor { ($0.userInterfaceStyle == .light ? appGrayColor : appWhiteColor) }
    }
    
    class var appBlackWhiteColor: UIColor {
        return UIColor { ($0.userInterfaceStyle == .light ? appDarkColor : appWhiteColor) }
    }
}
//let appBrandColor = UIColor(hex: "#ff0C8EFF")!
let appBlueColor = UIColor(r: 247, g: 247, b: 247, alpa: 1)
let appBrandColor: UIColor = .purple
let appBlackColor = UIColor.black
//let appGrayColor = UIColor.lightGray
let appLightGrayColor = appGrayColor.withAlphaComponent(0.2)
let appGrayColor = UIColor(r: 41, g: 41, b: 41, alpa: 1)
let appWhiteColor = UIColor(hex: "#ffF9F9F9")!
let appDarkColor = UIColor(r: 34, g: 38, b: 47)
