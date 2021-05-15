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
    
    func nextBtnTapped() {
        parentCoordinator.showConfirmation()
    }
}
