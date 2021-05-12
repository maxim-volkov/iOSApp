//
//  SignInViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import Foundation

final class SignInViewModel {
    
    private(set) var title = "Sign In"
    
    private let parentCoordinator: SignInCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! SignInCoordinator
    }
    
    func signInBtnTapped(email: String?, password: String?) {
        parentCoordinator.showHomeScreen()
    }
}
