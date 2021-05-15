//
//  constants.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit



let appBrandColor = UIColor(hex: "#ff0C8EFF")!
let appBlackColor = UIColor.black
let appGrayColor = UIColor.lightGray
let appWhiteColor = UIColor(hex: "#ffF9F9F9")
let appDarkColor = UIColor(r: 34, g: 38, b: 47)

let appPadding = 12
let appLargePadding = 24
let appExtraLargePadding = 36
let appBtnHeight = 60

let RL = R.string.localization.self



func appBlackFont(size: CGFloat) -> UIFont {
    return .systemFont(ofSize: size, weight: .black)
}
func appBoldFont(size: CGFloat) -> UIFont {
    return .systemFont(ofSize: size, weight: .bold)
}
func appMediumFont(size: CGFloat) -> UIFont {
    return .systemFont(ofSize: size, weight: .medium)
}
func appLightFont(size: CGFloat) -> UIFont {
    return .systemFont(ofSize: size, weight: .regular)
}
