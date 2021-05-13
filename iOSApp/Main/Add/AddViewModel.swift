//
//  AddViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import Foundation

final class AddViewModel {
    
    private(set) var title: String = RL.favorite()

    private let parentCoordinator: AddCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! AddCoordinator
    }
}
