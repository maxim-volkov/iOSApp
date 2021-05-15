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
    private let forgetPasswordLabel = UILabel.makeLabel(RL.forgetPasswordEnterDetails(), font: appMediumFont(size: 16), color: .appGrayWhiteColor, textAligment: .center, numberOfLines: 0)
    private let textField = AppTextField(placeholder: RL.emailOrPhone())
    private let nextBtn = UIButton.makeButton(title: RL.next(), backgroundColor: .appBlackBrandColor)
    
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
            make.leading.trailing.equalToSuperview()
        }
        forgetPasswordLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview().inset(appExtraLargePadding)
        }
        stackView.snp.makeConstraints { make in
            make.top.equalTo(forgetPasswordLabel.snp.bottom).inset(-appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview().inset(appLargePadding)
        }
    }
    
    @objc private func nextBtnTapped() {
        if !viewModel.nextBtnTapped(emailOrPhoneNumber: textField.text) {
            if let aShake = makeShakeAnimation() {
                scrollView.layer.add(aShake, forKey: "shake")
            }
        }
    }
}
