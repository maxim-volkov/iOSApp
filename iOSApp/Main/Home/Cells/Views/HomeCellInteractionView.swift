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

final class HomeCellInteractionView: UIStackView, CellInteractionViewDelegate {
    
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
        [likeView, commentView, sendView, saveView].forEach { view in
            self.addArrangedSubview(view)
            view.cellInteractionViewDelegate = self
        }
    }
    
    override var alignmentRectInsets: UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func btnTapped(tag: Int) {
        switch tag {
        case 1:
            likeView.textChanged = "7.3K"
            break
        case 2:
            break
        case 3:
            break
        case 4:
            break
        default:
            break
        }
    }
    
}

protocol CellInteractionViewDelegate {
    func btnTapped(tag: Int)
}

fileprivate final class CellInteractionView: UIStackView {
    
    var textChanged: String? {
        didSet {
            label.text = textChanged
        }
    }
    
    var cellInteractionViewDelegate: CellInteractionViewDelegate!
    private let btn: UIButton = UIButton()
    private var label: UILabel = UILabel()
    init(type: InteractionType) {
        btn.tintColor = appDarkColor
        switch type {
        case .like(text: let text):
            btn.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
            btn.setImage(UIImage(systemName: "hand.thumbsup.fill"), for: .selected)
            btn.tag = 1
            label = UILabel.makeLabel(text, font: appMediumFont(size: 13), color: appBlackColor, textAligment: .left)
        case .comment(text: let text):
            btn.setImage(UIImage(systemName: "message"), for: .normal)
            btn.tag = 2
            label = UILabel.makeLabel(text, font: appMediumFont(size: 13), color: appBlackColor, textAligment: .left)
        case .send:
            btn.setImage(UIImage(systemName: "paperplane"), for: .normal)
            btn.tag = 3
        case .save:
            btn.setImage(UIImage(systemName: "bookmark"), for: .normal)
            btn.setImage(UIImage(systemName: "bookmark.fill"), for: .selected)
            btn.tag = 4
        }
        super.init(frame: .zero)
        btn.addTarget(self, action: #selector(btnTapped(_:)), for: .touchUpInside)
        self.distribution = .fillProportionally
        self.axis = .horizontal
        self.spacing = 5
        self.addArrangedSubview(btn)
        self.addArrangedSubview(label)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc private func btnTapped(_ sender: UIButton) {
        let tag = sender.tag
        switch sender.tag {
        case 1:
            cellInteractionViewDelegate.btnTapped(tag: tag)
            btn.isSelected.toggle()
        case 2:
            cellInteractionViewDelegate.btnTapped(tag: tag)
            btn.isSelected.toggle()
        default:
            cellInteractionViewDelegate.btnTapped(tag: tag)
        }
    }
    
}
