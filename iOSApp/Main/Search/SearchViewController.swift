//
//  SearchViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class SearchViewController: BaseViewController {
    
    var viewModel: SearchViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        title = viewModel.title
    }
}
