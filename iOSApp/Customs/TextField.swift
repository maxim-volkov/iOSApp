//
//  TextField.swift
//  iOSApp
//
//  Created by HOGGISH on 12/05/21.
//

import UIKit

final class AppTextField: UITextField {
    
    private let textPadding = UIEdgeInsets( top: 10, left: 20, bottom: 10, right: 20 )

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    init(placeholder: String?) {
        super.init(frame: .zero)
        sizeThatFits(CGSize(width: 0, height: 44))
        self.placeholder = placeholder
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = appBrandColor.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
