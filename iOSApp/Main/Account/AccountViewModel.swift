//
//  AccountViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import Foundation

final class AccountViewModel {
    
    private(set) var title: String = RL.account()

    private let parentCoordinator: AccountCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! AccountCoordinator
    }
}
