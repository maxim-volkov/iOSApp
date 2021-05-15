//
//  ConfirmViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import Foundation

final class ConfirmViewModel {
    
    private let parentCoordinator: ConfirmCoordinator

    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! ConfirmCoordinator
    }
    
}
