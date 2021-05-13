//
//  HomeViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 12/05/21.
//

import Foundation

final class HomeViewModel {
    
    private(set) var title: String = RL.appName()
    
    private let parentCoordinator: HomeCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! HomeCoordinator
    }
}
