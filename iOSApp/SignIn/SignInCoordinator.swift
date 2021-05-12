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
    
    func start() {
        let ctrl = SignInViewController()
        let viewModel = SignInViewModel(coordinator: self)
        ctrl.viewModel = viewModel
        navigationController.pushViewController(ctrl, animated: true)
    }
}
