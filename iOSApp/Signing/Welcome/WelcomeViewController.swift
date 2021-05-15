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
    
    private let logoImageView = UIImageView(image: nil, contentMode: .scaleAspectFit)
    private let welcomeLabel = UILabel.makeLabel(RL.welcomeMsg(), font: appBoldFont(size: 35), color: appDarkColor, textAligment: .left, numberOfLines: 0)
    private let buildYourOwnSocial = UILabel.makeLabel(RL.secondWelcomeMsg(), font: .systemFont(ofSize: 24), textAligment: .center)
    
    private let loginView = UIView.makeTopRoundedView()
    private let signInWithPhone = UIButton.makeButton(title: RL.signInWithPhone(), backgroundColor: appDarkColor, cornerRadius: 20)
    private let signInWithEmail = UIButton.makeButton(title: RL.signInWithEmail(), backgroundColor: .clear, borderColor: appDarkColor, cornerRadius: 20)
    
    private let notMemberButton = UIButton.makeLabelButton(title: RL.notAMember(), textColor: appGrayColor, titleFont: appMediumFont(size: 16))
    private let forgetPasswordButton = UIButton.makeLabelButton(title: RL.forgetPassword(), textColor: appBrandColor, titleFont: appMediumFont(size: 16))
    
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
        logoImageView.backgroundColor = appGrayColor
        loginView.backgroundColor = appWhiteColor
        signInWithPhone.addTarget(self, action: #selector(signInWithPhoneTapped), for: .touchUpInside)
        signInWithEmail.addTarget(self, action: #selector(signInWithEmailTapped), for: .touchUpInside)

        notMemberButton.addTarget(self, action: #selector(notMemberTapped), for: .touchUpInside)
        forgetPasswordButton.addTarget(self, action: #selector(forgetPasswordTapped), for: .touchUpInside)

        view.addSubviews(logoImageView, loginView)
        logoImageView.addSubview(welcomeLabel)
        loginView.addSubviews(signInWithPhone, signInWithEmail, notMemberButton, forgetPasswordButton)
    }
    
    private func setupLayout() {
        logoImageView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.65)
        }
        welcomeLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview().multipliedBy(0.7)
            make.leading.equalToSuperview().inset(appLargePadding)
            make.trailing.equalToSuperview().inset(appLargePadding * 3)
        }
        loginView.snp.makeConstraints { make in
            make.bottom.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.45)
        }
        signInWithPhone.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(appLargePadding)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.8)
        }
        signInWithEmail.snp.makeConstraints { make in
            make.top.equalTo(signInWithPhone.snp.bottom).inset(-appPadding)
            make.leading.trailing.equalTo(signInWithPhone)
        }
        notMemberButton.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(signInWithEmail.snp.bottom).inset(appPadding)
            make.bottom.equalTo(forgetPasswordButton.snp.top).inset(-appPadding)
            make.leading.trailing.equalTo(signInWithPhone)
        }
        forgetPasswordButton.snp.makeConstraints { make in
            make.bottomMargin.equalToSuperview().inset(appLargePadding)
            make.leading.trailing.equalTo(signInWithPhone)
        }
    }
    @objc private func signInWithPhoneTapped() {
        viewModel.signInWithPhoneTapped()
    }
    @objc private func signInWithEmailTapped() {
        viewModel.signInWithEmailTapped()
    }
    @objc private func notMemberTapped() {
        viewModel.signUpTapped()
    }
    @objc private func forgetPasswordTapped() {
        viewModel.forgetPasswordTapped()
    }
}
