//
//  ConfirmViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import Foundation

final class ConfirmViewModel {
    
    private let parentCoordinator: ConfirmCoordinator
    private(set) var codeCount: Int = 6
    private(set) var emailOrPhoneNumber: String
    init(coordinator: Coordinator, emailOrPhoneNumber: String) {
        self.parentCoordinator = coordinator as! ConfirmCoordinator
        self.emailOrPhoneNumber = emailOrPhoneNumber
    }
    
    func nextBtnTapped(code: String?) -> Bool {
        guard let code = code?.trim(), code.count > 6 else { return false }
        return true
    }
    
    func didNotRecieveCodeTapped() -> Bool {
        return false
    }
}
