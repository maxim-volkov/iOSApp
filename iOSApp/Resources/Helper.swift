//
//  Helper.swift
//  iOSApp
//
//  Created by HOGGISH on 15/05/21.
//

import Foundation

final class Helper {
    static func isEmailValid(email: String?) -> Bool {
        let emailPred = NSPredicate(format:"SELF MATCHES %@", R.string.constants.emailRegEx())
        guard emailPred.evaluate(with: email) else { return false }
        return true
    }
}
