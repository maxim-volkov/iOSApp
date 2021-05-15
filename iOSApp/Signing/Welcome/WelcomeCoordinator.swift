//
//  WelcomeCoordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

final class WelcomeCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private(set) var navigationController = UINavigationController()
//
    init(navCtrl: UINavigationController) {
        self.navigationController = navCtrl
    }
    func start() {
        let ctrl = WelcomeViewController()
        let viewModel = WelcomeViewModel(coordinator: self)
        ctrl.viewModel = viewModel
        navigationController.setViewControllers([ctrl], animated: false)
    }
    
    func showSignUp() {
        let coordinator = SignUpCoordinator(navCtrl: navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
    func showSignIn(signInType: SignInType) {
        let coordinator = SignInCoordinator(navCtrl: navigationController)
        coordinator.start(signInType)
        childCoordinators.append(coordinator)
    }
    func showForgetPassword() {
        let coordinator = ForgetPasswordCoordinator(navCtrl: navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
}
