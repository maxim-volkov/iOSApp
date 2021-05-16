//
//  FavoriteViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class FavoriteViewController: BaseViewController {
    
    var viewModel: FavoriteViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func setupView() {
        super.setupView()
        title = viewModel.title
    }
}
