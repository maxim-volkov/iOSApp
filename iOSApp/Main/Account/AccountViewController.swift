//
//  AccountViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class AccountViewController: BaseViewController {
    
    var viewModel: AccountViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        title = viewModel.title
    }
}
