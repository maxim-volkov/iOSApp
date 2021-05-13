//
//  AccountCoordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class AccountCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController = UINavigationController()
    
    var viewController: UINavigationController {
        let ctrl = AccountViewController()
        let viewModel = AccountViewModel(coordinator: self)
        ctrl.viewModel = viewModel
        navigationController.setViewControllers([ctrl], animated: false)
        return navigationController
    }
}
