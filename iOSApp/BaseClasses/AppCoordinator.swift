//
//  AppCoordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import UIKit

final class AppCoordinator: Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    
    private(set) var navigationController = UINavigationController()
    
    private let window: UIWindow
    
    init(_ window: UIWindow) {
        self.window = window
    }
    
    func start() {
        SettingsManager.shared.user = .authenticated
        switch SettingsManager.shared.user {
        case .authenticated:
            let tabBarCoordinator = TabBarCoordinator()
            childCoordinators.append(tabBarCoordinator)
            window.rootViewController = tabBarCoordinator.currentViewController
        case .notAuthenticated:
            let welcomeCoordinator = WelcomeCoordinator(navCtrl: navigationController)
            welcomeCoordinator.start()
            childCoordinators.append(welcomeCoordinator)
            window.rootViewController = navigationController
        }
        window.makeKeyAndVisible()
    }
}

