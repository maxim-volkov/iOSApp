//
//  RoundedImageView.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class RoundedImageView:  UIImageView {
    
    override init(image: UIImage?) {
        super.init(frame: .zero)
        self.image = image
        self.contentMode = .scaleToFill
        self.layer.borderColor = appBrandColor.cgColor
        self.layer.borderWidth = 2
        self.clipsToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = frame.width / 3
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


