//
//  ForgetPasswordCoordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import UIKit

final class ForgetPasswordCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navCtrl: UINavigationController) {
        self.navigationController = navCtrl
    }
    
    func start() {
        let ctrl = ForgetPasswordViewController()
        let viewModel = ForgetPasswordViewModel(coordinator: self)
        ctrl.viewModel = viewModel
        navigationController.pushViewController(ctrl, animated: true)
    }
    
    func showHomeScreen() {
        SettingsManager.shared.user = .authenticated
    }
}
