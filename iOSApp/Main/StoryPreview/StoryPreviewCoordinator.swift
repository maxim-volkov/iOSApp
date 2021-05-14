//
//  StoryPreviewCoordinator.swift
//  iOSApp
//
//  Created by HOGGISH on 14/05/21.
//

import UIKit

final class StoryPreviewCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navCtrl: UINavigationController) {
        self.navigationController = navCtrl
    }
    
    func start() {
        let ctrl = StoryPreviewViewController()
        let viewModel = StoryPreviewViewModel(coordinator: self)
        ctrl.viewModel = viewModel
        navigationController.pushViewController(ctrl, animated: true)
    }
    
    func showHomeScreen() {
//        let coordinator = HomeCoordinator()
//        childCoordinators.append(coordinator)
    }
}
