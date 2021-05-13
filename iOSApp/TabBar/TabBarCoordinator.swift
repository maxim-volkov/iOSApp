//
//  TabBarCoordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class TabBarCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    var navigationController = UINavigationController()
    
    var currentViewController: UIViewController {
        let tabBarCtrl = TabBarViewController()
        tabBarCtrl.viewModel = TabBarViewModel(coordinator: self)
        let homeCoordinator = HomeCoordinator()
        let searchCoordinator = SearchCoordinator()
        let addCoordinator = AddCoordinator()
        let favoriteCoordinator = FavoriteCoordinator()
        let accountCoordinator = AccountCoordinator()
    
        homeCoordinator.viewController.tabBarItem = AppCustomTabBar(image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        searchCoordinator.viewController.tabBarItem = AppCustomTabBar(image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        addCoordinator.viewController.tabBarItem = AppCustomTabBar(image: UIImage(systemName: "plus"), selectedImage: UIImage(systemName: "plus.circle"))
        favoriteCoordinator.viewController.tabBarItem = AppCustomTabBar(image: UIImage(systemName: "heart"), selectedImage: UIImage(systemName: "heart.fill"))
        accountCoordinator.viewController.tabBarItem = AppCustomTabBar(image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person"))
        
        tabBarCtrl.setViewControllers([
            homeCoordinator.viewController,
            searchCoordinator.viewController,
            addCoordinator.viewController,
            favoriteCoordinator.viewController,
            accountCoordinator.viewController,
        ], animated: true)
        childCoordinators.append(homeCoordinator)
        childCoordinators.append(searchCoordinator)
        childCoordinators.append(addCoordinator)
        childCoordinators.append(favoriteCoordinator)
        childCoordinators.append(accountCoordinator)
        return tabBarCtrl
    }
}
