//
//  BaseViewController.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.standardAppearance.backgroundColor = .systemBackground
        navigationController?.navigationBar.standardAppearance.shadowColor = .clear
        navigationController?.navigationBar.tintColor = appDarkColor
    }
    
    
    deinit {
        print("viewcontroller deallocated")
    }
}
