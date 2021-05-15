//
//  SignInViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 11/05/21.
//

import Foundation

enum SignInType {
    case phone, email
}

final class SignInViewModel {
    
    private(set) var title: String
    private let signInType: SignInType
    private let parentCoordinator: SignInCoordinator
    
    init(coordinator: Coordinator, signInType: SignInType) {
        self.parentCoordinator = coordinator as! SignInCoordinator
        self.signInType = signInType
        switch signInType {
        case .email:
            title = RL.enterYourEmail()
        case .phone:
            title = RL.enterYourPhoneNumber()
        }
    }
    
    func signInBtnTapped(email: String?, password: String?) -> Bool {
        guard let email = email, let password = password else {
            return false
        }
        if Helper.isEmailValid(email: email), Helper.isPasswordValid(password: password) {
            parentCoordinator.showHomeScreen()
            return true
        } else {
            return false
        }
    }
    func forgetPasswordTapped() {
        parentCoordinator.showForgetPassword()
    }
    func notMemberTapped() {
        parentCoordinator.showSignUp()
    }
}
