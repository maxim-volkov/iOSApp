//
//  AccountViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class AccountViewController: BaseViewController {
    
    var viewModel: AccountViewModel!
    //MARK:- Views
    private let horizontalView = AccountHorizontalView(postsModel: TitleSubtitleModel(title: "24", subtitle: "Posts"), followerModel: TitleSubtitleModel(title: "24.6K", subtitle: "Followers"), followingModel: TitleSubtitleModel(title: "62", subtitle: "Following"))
    
    private let userDetailsLabel = UserDetailsLabel(TitleSubtitleModel(title: "HOGGISH | iOS Developer", subtitle: "21 y.o iOS Developer"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    
    private func setupView() {
        title = viewModel.title
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gearshape"), style: .done, target: self, action: #selector(righBarButtonTapped))
        
        view.addSubviews(horizontalView, userDetailsLabel)
    }
    private func setupLayout() {
        horizontalView.snp.makeConstraints { make in
            make.topMargin.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(appLargePadding)
        }
        userDetailsLabel.snp.makeConstraints { make in
            make.top.equalTo(horizontalView.snp.bottom).inset(-appPadding)
            make.leading.trailing.equalToSuperview().inset(appLargePadding)
        }
    }
    
    
    @objc private func righBarButtonTapped() {
        print("righBarButtonTapped")
    }
}



