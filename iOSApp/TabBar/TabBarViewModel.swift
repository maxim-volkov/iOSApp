//
//  TabBarViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import Foundation

final class TabBarViewModel {
        
    private let parentCoordinator: TabBarCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! TabBarCoordinator
    }
}
