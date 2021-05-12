//
//  SignInViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import Foundation

final class SignInViewModel {
    
    private(set) var title = "Sign In"
    
    private let parentCoordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator
    }
}
