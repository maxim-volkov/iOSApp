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
    private(set) var title: String
    init(coordinator: Coordinator, type: PinCodeType) {
        self.parentCoordinator = coordinator as! PinCodeCoordinator
        title = "Create your new PIN"
    }
}
