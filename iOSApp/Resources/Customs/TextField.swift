//
//  TextField.swift
//  iOSApp
//
//  Created by HOGGISH on 12/05/21.
//

import UIKit

final class AppTextField: UITextField {
    
    private let textPadding = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
    private lazy var btn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        btn.addTarget(self, action: #selector(toggleSecureEntry), for: .touchUpInside)
        return btn
    }()

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    init(placeholder: String?, isSecureTextEntry: Bool = false) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = appBrandColor.cgColor
        tintColor = appBrandColor
        if isSecureTextEntry {
            rightView = btn
            rightViewMode = .always
            self.isSecureTextEntry = isSecureTextEntry
        }
    }
    
    @objc private func toggleSecureEntry() {
        if self.isSecureTextEntry {
            btn.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        } else {
            btn.setImage(UIImage(systemName: "eye"), for: .normal)
        }
        isSecureTextEntry.toggle()
    }
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.rightViewRect(forBounds: bounds)

        return rect.inset(by: UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 5))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
