//
//  ConfirmViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import UIKit

final class ConfirmViewController: BaseViewController, OneTimeCodeTextFieldDelegate {
    
    var viewModel: ConfirmViewModel!
    private let scrollView = UIScrollView(showsIndicator: false)
    private let stackView = UIStackView(axis: .vertical, distribution: .fill, spacing: 20)
    
    private lazy var confirmationLabel = UILabel.makeLabel(RL.sentConfirmationCode(viewModel.emailOrPhoneNumber), font: appMediumFont(size: 16), color: .appGrayWhiteColor, textAligment: .center, numberOfLines: 0)
    private lazy var textField = OneTimeCodeTextField(with: viewModel.codeCount)
    private let didNotRecieveCode = UIButton.makeLabelButton(title: RL.notReceivedCode(), textColor: appBrandColor, titleFont: appMediumFont(size: 16))
    private let nextBtn = UIButton.makeButton(title: RL.next(), backgroundColor: .appBlackBrandColor)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    
    private func setupView() {
        textField.oneTimeCodeTextFieldDelegate = self
        nextBtn.addTarget(self, action: #selector(nextBtnTapped), for: .touchUpInside)
        didNotRecieveCode.addTarget(self, action: #selector(didNotRecieveCodeTapped), for: .touchUpInside)
        view.addSubview(scrollView)
        stackView.alignment = .fill
        scrollView.addSubviews(confirmationLabel, stackView)
        stackView.addArrangedViews(textField, didNotRecieveCode, nextBtn)
    }
    
    private func setupLayout() {
        scrollView.snp.makeConstraints { make in
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview()
        }
        confirmationLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview().inset(appLargePadding)
        }
        textField.snp.makeConstraints { make in
            make.height.equalTo(60)
        }
        stackView.snp.makeConstraints { make in
            make.top.equalTo(confirmationLabel.snp.bottom).inset(-appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview().inset(appLargePadding)
        }
    }
    @objc private func nextBtnTapped() {
        if !viewModel.nextBtnTapped(code: textField.text) {
            if let aShake = makeShakeAnimation() {
                scrollView.layer.add(aShake, forKey: "shake")
            }
        }
    }
    @objc private func didNotRecieveCodeTapped() {
        if viewModel.didNotRecieveCodeTapped() {
            textField.text = ""
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

    //MARK:- OneTimeCodeTextFieldDelegate
    func didEnterLastDigit(_ text: String) {
        view.endEditing(true)
        if !viewModel.nextBtnTapped(code: textField.text) {
            if let aShake = makeShakeAnimation() {
                scrollView.layer.add(aShake, forKey: "shake")
            }
        }
    }
    
}
