//
//  ConfirmViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import Foundation

final class ConfirmViewModel {
    
    private let parentCoordinator: ConfirmCoordinator
    private(set) var emailOrPhoneNumber: String
    init(coordinator: Coordinator, emailOrPhoneNumber: String) {
        self.parentCoordinator = coordinator as! ConfirmCoordinator
        self.emailOrPhoneNumber = emailOrPhoneNumber
    }
    
    func nextBtnTapped() -> Bool {
        return false
    }
    
    func didNotRecieveCodeTapped() -> Bool {
        return false
    }
}
