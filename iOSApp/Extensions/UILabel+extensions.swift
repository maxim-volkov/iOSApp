//
//  UILabel+extensions.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

extension UILabel {
    
    static func makeLabel(_ text: String?, font: UIFont? = nil, color: UIColor? = nil, textAligment: NSTextAlignment? = nil) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = font
        label.textColor = color
        if let textAligment = textAligment {
            label.textAlignment = textAligment
        }
        return label
    }
}

