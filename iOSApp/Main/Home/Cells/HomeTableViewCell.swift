//
//  HomeTableViewCell.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class HomeTableViewCell: UITableViewCell {

    static let identifier = "HomeTableViewCell"
        
    var postImage: RoundedImageView!
    var cellInteraction: HomeCellInteractionView!
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
        
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        contentView.addSubviews(postImage, cellInteraction)
        postImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.leading.equalToSuperview()
        }
        
        cellInteraction.snp.makeConstraints { make in
            make.top.equalTo(postImage.snp.bottom).inset(25)
            make.height.equalTo(40)
            make.width.equalToSuperview().multipliedBy(0.7)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(appLargePadding)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
