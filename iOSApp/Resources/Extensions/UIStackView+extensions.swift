//
//  UIStackView+additions.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

extension UIStackView {
    
    convenience init(axis: NSLayoutConstraint.Axis, distribution: Distribution, spacing: CGFloat? = nil) {
        self.init(frame: .zero)
        self.axis = axis
        self.distribution = distribution
        if let spacing = spacing {
            self.spacing = spacing
        }
    }
    
    func addArrangedViews(_ views: UIView...) {
        views.forEach{ addArrangedSubview($0) }
    }
    
}
