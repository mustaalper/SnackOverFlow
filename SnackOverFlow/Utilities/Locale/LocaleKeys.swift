//
//  LocaleKeys.swift
//  SnackOverFlow
//
//  Created by MAA on 4.10.2022.
//

import SwiftUI

struct LocaleKeys {
    
    enum Auth: String {
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case custom = "signUpWithEmail"
    }
    
    enum Buttons: String {
        case getStarted = "getStarted"
    }
    
    enum Login: String {
        case welcomeBack = "welcomeBack"
        case createAccount = "createAccount"
        case termsAndConditions = "termsAndCondition"
    }
    
    enum General: String {
        case emailHint = "emailHint"
        case passwordHint = "passwordHint"
    }
}

extension String {
    /// It localize any string from Localizable.string
    /// - Returns: Localized value
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
