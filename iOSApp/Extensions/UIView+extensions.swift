//
//  UIView+extensions.swift
//  iOSApp
//
//  Created by HOGGISH on 12/05/21.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach{ self.addSubview($0) }
    }
    
}
