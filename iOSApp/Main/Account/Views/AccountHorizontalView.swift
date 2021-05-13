//
//  HorizontalStackView.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit


final class AccountHorizontalView: UIStackView {
    
    private let imageView: RoundedImageView
    private let postsLabel: FollowingLabel
    private let followersLabel: FollowingLabel
    private let followingLabel: FollowingLabel
        
    init(postsModel: TitleSubtitleModel, followerModel: TitleSubtitleModel, followingModel: TitleSubtitleModel) {
        imageView = RoundedImageView(image: R.image.kitten())
        postsLabel = FollowingLabel(postsModel)
        followersLabel = FollowingLabel(followerModel)
        followingLabel = FollowingLabel(followingModel)
        super.init(frame: .zero)
        self.distribution = .equalSpacing
        self.spacing = 10
        self.axis = .horizontal
        imageView.snp.makeConstraints { make in
            make.height.width.equalTo(90)
        }
        self.addArrangedViews(imageView, postsLabel, followersLabel, followingLabel)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

