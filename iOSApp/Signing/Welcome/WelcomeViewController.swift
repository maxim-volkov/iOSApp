//
//  WelcomeViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit
import SnapKit

class WelcomeViewController: BaseViewController {
    //MARK: - weak should be used
    var viewModel: WelcomeViewModel!
    
    private let stackView = UIStackView(axis: .vertical, distribution: .fillProportionally, spacing: 20)
    private let logoImageView = UIImageView(image: UIImage(systemName: "network"), contentMode: .scaleAspectFit)
    private let welcomeLabel = UILabel.makeLabel(RL.welcomeMsg(), font: .systemFont(ofSize: 35, weight: .bold), color: appBrandColor, textAligment: .center)
    private let buildYourOwnSocial = UILabel.makeLabel(RL.secondWelcomeMsg(), font: .systemFont(ofSize: 24), textAligment: .center)
    private let loginBtn = UIButton.makeButton(title: RL.signIn(), backgroundColor: appBrandColor)
    private let signUpBtn = UIButton.makeButton(title: RL.signUp(), backgroundColor: .clear, borderColor: appBrandColor)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    private func setupView() {
        loginBtn.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
        signUpBtn.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
        view.addSubview(stackView)
        stackView.addArrangedViews(logoImageView, welcomeLabel, buildYourOwnSocial, loginBtn, signUpBtn)
    }
    
    private func setupLayout() {
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        signUpBtn.translatesAutoresizingMaskIntoConstraints = false
        stackView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(appLargePadding)
            make.center.equalToSuperview()
        }
    }
    @objc private func signInTapped() {
        viewModel.signInTapped()
    }
    @objc private func signUpTapped() {
        viewModel.signUpTapped()
    }
}
