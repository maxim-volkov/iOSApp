//
//  SignInViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

final class SignInViewController: BaseViewController {
    
    var viewModel: SignInViewModel!
    private let scrollView = UIScrollView()
    private let stackView = UIStackView(axis: .vertical, distribution: .fillProportionally, spacing: 20)
    private let signInToAppLabel = UILabel.makeLabel(RL.signInToApp(), font: appBoldFont(size: 35), color: appDarkColor, textAligment: .center, numberOfLines: 3)
    private let enterYourDetailsLabel = UILabel.makeLabel(RL.enterYourDetails(), font: appMediumFont(size: 15), color: appGrayColor, textAligment: .center)
    
    private lazy var textField = AppTextField(placeholder: viewModel.title)
    private let passwordTextField = AppTextField(placeholder: RL.password(), isSecureTextEntry: true)
    private let signInBtn = UIButton.makeButton(title: RL.signIn(), backgroundColor: appBlackColor)
    private let forgetPasswordButton = UIButton.makeLabelButton(title: RL.forgetPassword(), textColor: appBrandColor, titleFont: appMediumFont(size: 16))
    private let notMemberButton = UIButton.makeLabelButton(title: RL.notAMember(), textColor: appGrayColor, titleFont: appMediumFont(size: 16))
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    
    private func setupView() {
        notMemberButton.addTarget(self, action: #selector(notMemberTapped), for: .touchUpInside)
        signInBtn.addTarget(self, action: #selector(signInBtnTapped), for: .touchUpInside)
        forgetPasswordButton.addTarget(self, action: #selector(forgetPasswordTapped), for: .touchUpInside)
        view.addSubview(scrollView)
        scrollView.addSubviews(signInToAppLabel, enterYourDetailsLabel, stackView, notMemberButton, forgetPasswordButton)
        stackView.alignment = .fill
        stackView.addArrangedViews(textField, passwordTextField, signInBtn)
        
    }
    
    private func setupLayout() {
        scrollView.snp.makeConstraints { make in
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview().inset(appLargePadding)
        }
        signInToAppLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview().inset(appLargePadding)
        }
        enterYourDetailsLabel.snp.makeConstraints { make in
            make.top.equalTo(signInToAppLabel.snp.bottom).inset(-appPadding)
            make.leading.width.trailing.equalTo(signInToAppLabel)
        }
        stackView.snp.makeConstraints { make in
            make.top.equalTo(enterYourDetailsLabel.snp.bottom).inset(-appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview()
        }
        notMemberButton.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).inset(-appPadding)
            make.leading.trailing.equalTo(stackView)
        }
        forgetPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(notMemberButton.snp.bottom).inset(-appPadding)
            make.leading.trailing.equalTo(stackView)
        }
    }
    
    @objc private func signInBtnTapped() {
        viewModel.signInBtnTapped(email: textField.text, password: passwordTextField.text)
    }
    @objc private func notMemberTapped() {
        viewModel.notMemberTapped()
    }
    @objc private func forgetPasswordTapped() {
        viewModel.forgetPasswordTapped()
    }
}
