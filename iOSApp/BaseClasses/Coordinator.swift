//
//  Coordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get }
    var navigationController: UINavigationController { get }
    
    func start()
}

protocol BaseViewModel {
}

final class AppCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private(set) var navigationController: UINavigationController
    
    private let window: UIWindow
    
    init(_ window: UIWindow) {
        self.navigationController = UINavigationController()
        self.window = window
    }
    
    func start() {
        let homeCoordinator = WelcomeCoordinator(navCtrl: navigationController)
        homeCoordinator.start()
        childCoordinators.append(homeCoordinator)
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}

