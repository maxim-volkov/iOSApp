//
//  HomeViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 12/05/21.
//

import UIKit

final class HomeViewController: BaseViewController {

    var viewModel: HomeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        title = viewModel.title
    }
}
