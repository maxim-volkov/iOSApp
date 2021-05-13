//
//  SearchViewModel.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import Foundation

final class SearchViewModel {
    
    private(set) var title: String = RL.search()

    private let parentCoordinator: SearchCoordinator
    
    init(coordinator: Coordinator) {
        self.parentCoordinator = coordinator as! SearchCoordinator
    }
}
