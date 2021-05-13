//
//  SearchCoordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class SearchCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController = UINavigationController()
    
    var viewController: UINavigationController {
        let ctrl = SearchViewController()
        let viewModel = SearchViewModel(coordinator: self)
        ctrl.viewModel = viewModel
        navigationController.setViewControllers([ctrl], animated: false)
        return navigationController
    }
}
