//
//  UIImageView+extensions.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentMode: UIView.ContentMode = .scaleToFill, tintColor: UIColor? = nil) {
        self.init(frame: .zero)
        self.image = image
        self.contentMode = contentMode
        self.tintColor = tintColor
    }
    
}
