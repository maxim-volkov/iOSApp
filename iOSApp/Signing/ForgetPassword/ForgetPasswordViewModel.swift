//
//  ForgetPasswordViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import Foundation

final class ForgetPasswordViewModel {
    
    private(set) var title: String = RL.forgetPassword()
    private let parentCoordinator: ForgetPasswordCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! ForgetPasswordCoordinator
    }
    
    func nextBtnTapped(emailOrPhoneNumber: String?) -> Bool {
        guard let emailOrPhoneNumber = emailOrPhoneNumber else { return false }
        if Helper.isEmailValid(email: emailOrPhoneNumber) {
            parentCoordinator.showConfirmation(emailOrPhoneNumber: emailOrPhoneNumber)
            return true
        } else if Helper.isPhoneNumberValid(emailOrPhoneNumber) {
            parentCoordinator.showConfirmation(emailOrPhoneNumber: emailOrPhoneNumber)
            return true
        } else {
            return false
        }
    }
}
