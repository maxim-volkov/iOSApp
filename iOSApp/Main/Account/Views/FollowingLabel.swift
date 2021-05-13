//
//  AccountViews.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

struct TitleSubtitleModel {
    let title: String
    let subtitle: String
}

final class FollowingLabel: UILabel {
    
    init(_ model: TitleSubtitleModel, textAlignment: NSTextAlignment = .center, size: CGFloat = 17) {
        let size: CGFloat = size
        let boldAttrs = [NSAttributedString.Key.font: appBoldFont(size: size),
                         NSAttributedString.Key.foregroundColor : appBlackColor]
        let attributedString = NSMutableAttributedString(string: model.title + "\n", attributes: boldAttrs)
        
        let normalAttrs = [NSAttributedString.Key.font: appLightFont(size: size - 3),
                           NSAttributedString.Key.foregroundColor : appGrayColor]
        let normalString = NSMutableAttributedString(string: model.subtitle, attributes: normalAttrs)
        attributedString.append(normalString)
        
        super.init(frame: .zero)
        self.attributedText = attributedString
        self.numberOfLines = 2
        self.textAlignment = textAlignment
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

final class UserDetailsLabel: UILabel {
    
    init(_ model: TitleSubtitleModel) {
        let size: CGFloat = 18
        
        let boldAttrs = [NSAttributedString.Key.font: appBoldFont(size: size),
                         NSAttributedString.Key.foregroundColor : appBlackColor]
        let attributedString = NSMutableAttributedString(string: model.title + "\n", attributes: boldAttrs)
        
        let normalAttrs = [NSAttributedString.Key.font: appLightFont(size: size - 3),
                           NSAttributedString.Key.foregroundColor : appGrayColor]
        let normalString = NSMutableAttributedString(string: model.subtitle, attributes: normalAttrs)
        attributedString.append(normalString)
        
        super.init(frame: .zero)
        self.attributedText = attributedString
        self.numberOfLines = 2
        self.textAlignment = textAlignment
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
