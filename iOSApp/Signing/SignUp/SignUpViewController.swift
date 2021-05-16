//
//  SignUpViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

final class SignUpViewController: BaseViewController {
    
    var viewModel: SignUpViewModel!
    private let scrollView = UIScrollView(showsIndicator: false)
    private let signUpToAppLabel = UILabel.makeLabel(RL.signUpToApp(), font: appBoldFont(size: 35), color: .appBlackWhiteColor, textAligment: .center, numberOfLines: 3)
    private let stackView = UIStackView(axis: .vertical, distribution: .fillProportionally, spacing: 20)
    
    private lazy var emailPhoneTextField = AppTextField(placeholder: viewModel.title)
    private let passwordTextField = AppTextField(placeholder: RL.password(), isSecureTextEntry:  true)
    private let confirmPasswordTextField = AppTextField(placeholder: RL.confirmPassword(), isSecureTextEntry: true)
    private let signUpBtn = UIButton.makeButton(title: RL.signUp(), backgroundColor: .appBlackBrandColor)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    
    override func setupView() {
        super.setupView()
        signUpBtn.addTarget(self, action: #selector(signUpBtnTapped), for: .touchUpInside)
        view.addSubview(scrollView)
        scrollView.addSubviews(signUpToAppLabel, stackView)
        stackView.alignment = .fill
        stackView.addArrangedViews(emailPhoneTextField, passwordTextField, confirmPasswordTextField, signUpBtn)
    }
    
    override func setupLayout() {
        super.setupLayout()
        scrollView.snp.makeConstraints { make in
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview()
        }
        signUpToAppLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview().inset(appLargePadding)
        }
        stackView.snp.makeConstraints { make in
            make.top.equalTo(signUpToAppLabel.snp.bottom).inset(-appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview().inset(appLargePadding)
        }
    }
    override func keyboardWillShow(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            scrollView.contentSize = CGSize(width: scrollView.frame.width, height: scrollView.frame.height + keyboardHeight)
        }
    }
    override func keyboardWillHide(_ notification: Notification) {
        scrollView.contentSize = scrollView.frame.size
    }
    
    @objc private func signUpBtnTapped() {
        if !viewModel.signUpBtnTapped(email: emailPhoneTextField.text, password: passwordTextField.text, confirmPassword: confirmPasswordTextField.text) {
            if let aShake = makeShakeAnimation() {
                scrollView.layer.add(aShake, forKey: "shake")
            }
        }
    }
}
