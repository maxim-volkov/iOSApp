//
//  SignUpViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

final class SignUpViewController: BaseViewController {

    var viewModel: SignUpViewModel!
    private let scrollView = UIScrollView()
    private let stackView = UIStackView(axis: .vertical, distribution: .fillProportionally, spacing: 20)

    private let emailTextField = AppTextField(placeholder: RL.emailPhoneNumber())
    private let passwordTextField = AppTextField(placeholder: RL.password(), isSecureTextEntry:  true)
    private let confirmPasswordTextField = AppTextField(placeholder: RL.confirmPassword(), isSecureTextEntry: true)
    private let signUpBtn = UIButton.makeButton(title: RL.signUp(), backgroundColor: appBrandColor)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
        let textAttributes = [NSAttributedString.Key.foregroundColor: appBrandColor]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        navigationController?.navigationBar.largeTitleTextAttributes = textAttributes
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.titleTextAttributes = nil
        navigationController?.navigationBar.largeTitleTextAttributes = nil
    }
    private func setupView() {
        title = viewModel.title
        signUpBtn.addTarget(self, action: #selector(signUpBtnTapped), for: .touchUpInside)
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.alignment = .fill
        stackView.addArrangedViews(emailTextField, passwordTextField, confirmPasswordTextField, signUpBtn)
    }
    
    private func setupLayout() {
        scrollView.snp.makeConstraints { make in
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview().inset(appLargePadding)
        }
        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(appLargePadding)
            make.leading.width.trailing.equalToSuperview()
        }
    }
    @objc private func signUpBtnTapped() {
        viewModel.signUpBtnTapped(email: emailTextField.text, password: passwordTextField.text, confirmPassword: confirmPasswordTextField.text)
    }
}
