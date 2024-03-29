//
//  ConfirmCoordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import UIKit

final class ConfirmCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navCtrl: UINavigationController) {
        self.navigationController = navCtrl
    }
    func start() {
        fatalError("should not be called this")
    }
    func start(emailOrPhoneNumber: String) {
        let ctrl = ConfirmViewController()
        let viewModel = ConfirmViewModel(coordinator: self, emailOrPhoneNumber: emailOrPhoneNumber)
        ctrl.viewModel = viewModel
        navigationController.pushViewController(ctrl, animated: true)
    }
}
