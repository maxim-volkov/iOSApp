//
//  SignUpViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import Foundation

final class SignUpViewModel {
    
    private(set) var title = RL.createAccount()
    
    private let parentCoordinator: SignUpCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! SignUpCoordinator
    }
}
