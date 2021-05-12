//
//  WelcomeViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import Foundation

final class WelcomeViewModel: BaseViewModel {
        
    private let parentCoordinator: WelcomeCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! WelcomeCoordinator
    }

    func signUpTapped() {
        parentCoordinator.showSignUp()
    }
    
    func signInTapped() {
        parentCoordinator.showSignIn()
    }
}
