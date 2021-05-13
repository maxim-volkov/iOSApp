//
//  FavoriteViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import Foundation

final class FavoriteViewModel {
    
    private(set) var title: String = RL.favorite()

    private let parentCoordinator: FavoriteCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! FavoriteCoordinator
    }
}
