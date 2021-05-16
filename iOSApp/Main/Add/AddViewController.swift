//
//  AddViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class AddViewController: BaseViewController {
    
    var viewModel: AddViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func setupView() {
        super.setupView()
        title = viewModel.title
    }
}
