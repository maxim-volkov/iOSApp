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
    
    static func isPasswordValid(password: String?) -> Bool {
        guard let password = password else { return false }
        guard password.trim().count > 5 else { return false }
        return true
    }

    static func isPhoneNumberValid(_ phoneNumber: String?) -> Bool {
        guard let number = phoneNumber, !number.isEmpty else { return false }
        guard number.trim().allSatisfy({ $0.isNumber }) else { return false }
        return true
    }

}
