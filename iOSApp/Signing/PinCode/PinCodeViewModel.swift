//
//  PinCodeViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 16/05/21.
//

import Foundation
enum PinCodeType: Int {
    case create, confirm, change
}

final class PinCodeViewModel {
    
    private let parentCoordinator: PinCodeCoordinator

    init(coordinator: Coordinator, emailOrPhoneNumber: String) {
        self.parentCoordinator = coordinator as! PinCodeCoordinator
    }
}
