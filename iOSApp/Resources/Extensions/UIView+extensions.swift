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
    
    static func makeTopRoundedView() -> UIView {
        let view = UIView()
        view.layer.cornerRadius = 30
        view.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        view.layer.masksToBounds = true
        return view
    }
    
}
