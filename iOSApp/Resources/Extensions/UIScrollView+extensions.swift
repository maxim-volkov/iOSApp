//
//  UIScrollView+extensions.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import UIKit

extension UIScrollView {
    convenience init(showsIndicator: Bool) {
        self.init(frame: .zero)
        showsVerticalScrollIndicator = showsIndicator
        showsHorizontalScrollIndicator = showsIndicator
        alwaysBounceVertical = true
    }
}
