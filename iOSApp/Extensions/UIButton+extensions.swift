//
//  UIButton+extensions.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

extension UIButton {
    
    static func makeButton(title: String?, backgroundColor: UIColor?, borderColor: UIColor? = nil) -> UIButton {
        let btn = UIButton()
        btn.setTitle(title, for: .normal)
        btn.backgroundColor = backgroundColor
        btn.titleLabel?.font = appBoldFont(size: 18)
        if let borderColor = borderColor {
            btn.setTitleColor(borderColor, for: .normal)
            btn.layer.borderWidth = 1
            btn.layer.borderColor = borderColor.cgColor
        }
        btn.layer.cornerRadius = 8
        btn.snp.makeConstraints { make in
            make.height.equalTo(appBtnHeight)
        }
        return btn
    }
    
}



