//
//  HomeCollectionViewCell.swift
//  iOSApp
//
//  Created by HOGGISH on 14/05/21.
//

import UIKit

final class HomeCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "HomeCollectionViewCell"
    
    private var profileIV: RoundedImageView
    private let titleLabel: UILabel
    private let stackView = UIStackView(axis: .vertical, distribution: .equalSpacing, spacing: 2)
    override init(frame: CGRect) {
        profileIV = RoundedImageView(image: R.image.kitten(), cornerRadius: 22, needBorder: true)
        titleLabel = UILabel.makeLabel("kitten", font: appLightFont(size: 10), color: appDarkColor, textAligment: .center)
        super.init(frame: frame)
        stackView.alignment = .center
        stackView.addArrangedViews(profileIV, titleLabel)
        self.contentView.addSubviews(stackView)
        stackView.snp.makeConstraints { make in
            make.width.equalTo(55).priority(999)
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        profileIV.snp.makeConstraints { make in
            make.height.width.equalTo(50).priority(998)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


final class HomeAddCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "HomeAddCollectionViewCell"
    private var profileIV: RoundedImageView
    private let titleLabel: UILabel
    private let stackView = UIStackView(axis: .vertical, distribution: .equalSpacing, spacing: 2)
    override init(frame: CGRect) {
        profileIV = RoundedImageView(image: R.image.profileImage(), cornerRadius: 22, needBorder: true)
        titleLabel = UILabel.makeLabel("My Story", font: appLightFont(size: 10), color: appDarkColor, textAligment: .center)
        super.init(frame: frame)
        stackView.alignment = .center
        stackView.addArrangedViews(profileIV, titleLabel)
        self.contentView.addSubviews(stackView)
        stackView.snp.makeConstraints { make in
            make.width.equalTo(55).priority(999)
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        profileIV.snp.makeConstraints { make in
            make.height.width.equalTo(50).priority(998)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
