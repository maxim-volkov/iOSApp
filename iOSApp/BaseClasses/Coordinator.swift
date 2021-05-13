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
}

extension Coordinator {
    func start() {}
}

