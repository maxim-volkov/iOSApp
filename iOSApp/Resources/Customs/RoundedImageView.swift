//
//  RoundedImageView.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class RoundedImageView:  UIImageView {
    
    init(image: UIImage?, cornerRadius: CGFloat = 10, needBorder: Bool = true, contentMode: UIView.ContentMode = .scaleToFill) {
        super.init(frame: .zero)
        self.image = image
        self.contentMode = contentMode
        self.layer.cornerRadius = cornerRadius
        if needBorder {
            self.layer.borderColor = appBrandColor.cgColor
            self.layer.borderWidth = 2
        }
        self.clipsToBounds = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
