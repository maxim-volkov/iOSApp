//
//  PinCodeViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 16/05/21.
//

import UIKit

final class PinCodeViewController: BaseViewController {
    
    var viewModel: PinCodeViewModel!
    let imageView = UIImageView(image: UIImage(systemName: "lock"), contentMode: .scaleAspectFit)
    
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
    }
    override func setupLayout() {
        super.setupLayout()
    }
}
