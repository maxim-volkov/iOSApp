//
//  ConfirmViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import UIKit

final class ConfirmViewController: BaseViewController {

    var viewModel: ConfirmViewModel!
    private let scrollView = UIScrollView()
    private let stackView = UIStackView(axis: .vertical, distribution: .fillProportionally, spacing: 20)

    private lazy var confirmationLabel = UILabel.makeLabel(RL.sentConfirmationCode(viewModel.emailOrPhoneNumber), font: appMediumFont(size: 16), color: appGrayColor, textAligment: .center, numberOfLines: 0)
    private let textField = AppTextField(placeholder: RL.enterCode())
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
        scrollView.addSubviews(confirmationLabel, stackView)
        stackView.addArrangedViews(textField, nextBtn)
    }
    
    private func setupLayout() {
        scrollView.snp.makeConstraints { make in
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview().inset(appLargePadding)
        }
        confirmationLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview().inset(appLargePadding)
        }

        stackView.snp.makeConstraints { make in
            make.top.equalTo(confirmationLabel.snp.bottom).inset(-appExtraLargePadding)
            make.leading.width.trailing.equalToSuperview()
        }
    }
    @objc private func nextBtnTapped() {
//            viewModel.nextBtnTapped()
    }
}
