//
//  SignInCoordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import UIKit

final class SignInCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navCtrl: UINavigationController) {
        self.navigationController = navCtrl
    }
    
    func start(_ signInType: SignInType) {
        let ctrl = SignInViewController()
        let viewModel = SignInViewModel(coordinator: self, signInType: signInType)
        ctrl.viewModel = viewModel
        navigationController.pushViewController(ctrl, animated: true)
    }
    
    func showHomeScreen() {
//        let coordinator = HomeCoordinator()
//        childCoordinators.append(coordinator)
    }
    func showForgetPassword() {
        let coordinator = ForgetPasswordCoordinator(navCtrl: navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    func showSignUp() {
        navigationController.popViewController(animated: false)
        let coordinator = SignUpCoordinator(navCtrl: navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
}
