//
//  ForgetPasswordViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import UIKit

final class ForgetPasswordViewController: BaseViewController {
    
    var viewModel: ForgetPasswordViewModel!
    private let scrollView = UIScrollView()
    private let stackView = UIStackView(axis: .vertical, distribution: .fillProportionally, spacing: 20)

    private let forgetPasswordLabel = UILabel.makeLabel(RL.forgetPasswordEnterDetails(), font: appBoldFont(size: 35), color: appDarkColor, textAligment: .center, numberOfLines: 3)
    private let textField = AppTextField(placeholder: RL.emailOrPhone())
    private let nextBtn = UIButton.makeButton(title: RL.next(), backgroundColor: appBlackColor)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
        
    }
    private func setupView() {
        nextBtn.addTarget(self, action: #selector(nextBtnTapped), for: .touchUpInside)
        view.addSubview(scrollView)
        stackView.alignment = .fill
        scrollView.addSubviews(forgetPasswordLabel, stackView)
        stackView.addArrangedViews(textField, nextBtn)
    }
    
    private func setupLayout() {
        scrollView.snp.makeConstraints { make in
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview().inset(appLargePadding)
        }
        forgetPasswordLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview().inset(appLargePadding)
        }

        stackView.snp.makeConstraints { make in
            make.top.equalTo(forgetPasswordLabel.snp.bottom).inset(-appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview()
        }
    }
    
    @objc private func nextBtnTapped() {
        viewModel.nextBtnTapped(emailOrPhoneNumber: textField.text)
    }
}
