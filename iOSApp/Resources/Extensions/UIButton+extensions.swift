//
//  UIButton+extensions.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

extension UIButton {
    
    static func makeButton(title: String?, backgroundColor: UIColor?, borderColor: UIColor? = nil, titleFont: UIFont = appMediumFont(size: 18), cornerRadius: CGFloat = 8) -> UIButton {
        let btn = UIButton()
        btn.setTitle(title, for: .normal)
        btn.backgroundColor = backgroundColor
        btn.titleLabel?.font = titleFont
        if let borderColor = borderColor {
            btn.setTitleColor(borderColor, for: .normal)
            btn.layer.borderWidth = 1
            btn.layer.borderColor = borderColor.cgColor
        }
        btn.layer.cornerRadius = cornerRadius
        btn.snp.makeConstraints { make in
            make.height.equalTo(appBtnHeight)
        }
        return btn
    }
    
    static func makeLabelButton(title: String, textColor: UIColor?, titleFont: UIFont = appMediumFont(size: 18)) -> UIButton {
        let btn = UIButton()
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(textColor, for: .normal)
        btn.titleLabel?.font = titleFont
        return btn
    }
}



