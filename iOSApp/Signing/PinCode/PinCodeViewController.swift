//
//  PinCodeViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 16/05/21.
//

import UIKit

final class PinCodeViewController: BaseViewController {
    
    var viewModel: PinCodeViewModel!
    private let imageView = UIImageView(image: UIImage(systemName: "lock"), contentMode: .scaleAspectFit, tintColor: .appBlackWhiteColor)
    private let titleLabel = UILabel.makeLabel("Create your new PIN", font: appBoldFont(size: 16), color: .appBlackWhiteColor, textAligment: .center, numberOfLines: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    override func setupView() {
        super.setupView()
        view.addSubviews(imageView, titleLabel)
    }
    override func setupLayout() {
        super.setupLayout()
        imageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(appExtraLargePadding)
            make.height.width.equalTo(appBtnHeight)
            make.centerX.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).inset(-appPadding)
            make.leading.trailing.equalToSuperview().inset(appPadding)
        }
        
    }
}
