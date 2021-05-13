//
//  SettingsManager.swift
//  iOSApp
//
//  Created by HOGGISH on 13/05/21.
//

import Foundation
enum UserState: Int {
    case authenticated
    case notAuthenticated
}

final class SettingsManager {
    static let shared = SettingsManager()
    
    private let defaults = UserDefaults.standard
    
    var user: UserState {
        get {
            if let state = UserState.init(rawValue: defaults.integer(forKey: "userState")) {
                return state
            } else {
                return .notAuthenticated
            }
        } set {
            defaults.setValue(newValue.rawValue, forKey: "userState")
        }
    }
}
