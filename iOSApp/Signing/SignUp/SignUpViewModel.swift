//
//  SignUpViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import Foundation

final class SignUpViewModel {
    
    private(set) var title: String = RL.emailOrPhone()
    
    private let parentCoordinator: SignUpCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! SignUpCoordinator
    }
    func signUpBtnTapped(email: String?, password: String?, confirmPassword: String?) {
        parentCoordinator.showHomeScreen()
    }
}
