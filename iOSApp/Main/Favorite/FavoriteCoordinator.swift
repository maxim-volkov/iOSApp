//
//  FavoriteCoordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class FavoriteCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController = UINavigationController()
    
    var viewController: UINavigationController {
        let ctrl = FavoriteViewController()
        let viewModel = FavoriteViewModel(coordinator: self)
        ctrl.viewModel = viewModel
        navigationController.setViewControllers([ctrl], animated: false)
        return navigationController
    }
}
