//
//  ForgetPasswordViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import UIKit

final class ForgetPasswordViewController: BaseViewController {
    
    var viewModel: ForgetPasswordViewModel!
    private let scrollView = UIScrollView(showsIndicator: false)
    private let stackView = UIStackView(axis: .vertical, distribution: .fillProportionally, spacing: 20)
    private let forgetPasswordLabel = UILabel.makeLabel(RL.forgetPasswordEnterDetails(), font: appMediumFont(size: 16), color: .appGrayWhiteColor, textAligment: .center, numberOfLines: 0)
    private let textField = AppTextField(placeholder: RL.emailOrPhone())
    private let nextBtn = UIButton.makeButton(title: RL.next(), backgroundColor: .appBlackBrandColor)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
        
    }
    override func setupView() {
        super.setupView()
        nextBtn.addTarget(self, action: #selector(nextBtnTapped), for: .touchUpInside)
        view.addSubview(scrollView)
        stackView.alignment = .fill
        scrollView.addSubviews(forgetPasswordLabel, stackView)
        stackView.addArrangedViews(textField, nextBtn)
    }
    
    override func setupLayout() {
        super.setupLayout()
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
    
    @objc private func nextBtnTapped() {
        if !viewModel.nextBtnTapped(emailOrPhoneNumber: textField.text) {
            if let aShake = makeShakeAnimation() {
                scrollView.layer.add(aShake, forKey: "shake")
            }
        }
    }
}
