//
//  StoryPreviewViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 14/05/21.
//

import Foundation

final class StoryPreviewViewModel {
    
    private(set) var title: String = RL.signIn()
    
    private let parentCoordinator: StoryPreviewCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! StoryPreviewCoordinator
    }    
}
