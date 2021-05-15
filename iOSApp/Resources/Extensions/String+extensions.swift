//
//  String+extensions.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import Foundation

extension String {
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespaces)
    }
}
