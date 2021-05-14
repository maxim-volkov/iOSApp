//
//  HomeCellInteractionView.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

private enum InteractionType {
    case like(text: String), comment(text: String), send, save
}

final class HomeCellInteractionView: UIStackView {
    
    private let likeView: CellInteractionView
    private let commentView: CellInteractionView
    private let sendView: CellInteractionView
    private let saveView: CellInteractionView
    
    init(likes: String, comments: String) {
        likeView = CellInteractionView(type: .like(text: likes))
        commentView = CellInteractionView(type: .comment(text: comments))
        sendView = CellInteractionView(type: .send)
        saveView = CellInteractionView(type: .save)

        super.init(frame: .zero)
        backgroundColor = appWhiteColor
        self.axis = .horizontal
        self.distribution = .fillEqually
        self.alignment = .center
        self.layer.cornerRadius = 20

        
        self.layer.shadowColor = appGrayColor.cgColor
        self.layer.shadowRadius = 2
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 0.5
        self.layer.isOpaque = false
        self.addArrangedViews(likeView, commentView, sendView, saveView)
    }

    override var alignmentRectInsets: UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)

    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


fileprivate final class CellInteractionView: UIStackView {
        
    private let btn: UIButton = UIButton()
    private var label: UILabel = UILabel()
    init(type: InteractionType) {
        btn.tintColor = appDarkColor
        switch type {
        case .like(text: let text):
            btn.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
            btn.setImage(UIImage(systemName: "hand.thumbsup.fill"), for: .selected)
            label = UILabel.makeLabel(text, font: appMediumFont(size: 14), color: appBlackColor, textAligment: .left)
        case .comment(text: let text):
            btn.setImage(UIImage(systemName: "message"), for: .normal)
            label = UILabel.makeLabel(text, font: appMediumFont(size: 14), color: appBlackColor, textAligment: .left)
        case .send:
            btn.setImage(UIImage(systemName: "paperplane"), for: .normal)
        case .save:
            btn.setImage(UIImage(systemName: "bookmark"), for: .normal)
            btn.setImage(UIImage(systemName: "bookmark.fill"), for: .selected)
        }
        super.init(frame: .zero)
        self.distribution = .fillProportionally
        self.axis = .horizontal
        self.spacing = 5
        self.addArrangedSubview(btn)
        self.addArrangedSubview(label)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




