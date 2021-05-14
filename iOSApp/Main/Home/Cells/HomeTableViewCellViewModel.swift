//
//  HomeTableViewCellViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import Foundation

final class HomeTableViewCellViewModel {
        
    private let parentCoordinator: HomeCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! HomeCoordinator
    }
}
