//
//  HomeTableViewCoordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class HomeTableViewCellCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController = UINavigationController()

    var viewController: UINavigationController {
        let ctrl = HomeViewController()
        let viewModel = HomeViewModel(coordinator: self)
        ctrl.viewModel = viewModel
        navigationController.setViewControllers([ctrl], animated: false)
        return navigationController
    }
    
    func start() {
        fatalError("should not be called this method")
    }
}
