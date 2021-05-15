//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 1 colors.
  struct color {
    /// Color `AccentColor`.
    static let accentColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "AccentColor")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func accentColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.accentColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func accentColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.accentColor.name)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 3 images.
  struct image {
    /// Image `kitten`.
    static let kitten = Rswift.ImageResource(bundle: R.hostingBundle, name: "kitten")
    /// Image `profileImage1`.
    static let profileImage1 = Rswift.ImageResource(bundle: R.hostingBundle, name: "profileImage1")
    /// Image `profileImage`.
    static let profileImage = Rswift.ImageResource(bundle: R.hostingBundle, name: "profileImage")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "kitten", bundle: ..., traitCollection: ...)`
    static func kitten(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.kitten, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "profileImage", bundle: ..., traitCollection: ...)`
    static func profileImage(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.profileImage, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "profileImage1", bundle: ..., traitCollection: ...)`
    static func profileImage1(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.profileImage1, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.info` struct is generated, and contains static references to 1 properties.
  struct info {
    struct uiApplicationSceneManifest {
      static let _key = "UIApplicationSceneManifest"
      static let uiApplicationSupportsMultipleScenes = false

      struct uiSceneConfigurations {
        static let _key = "UISceneConfigurations"

        struct uiWindowSceneSessionRoleApplication {
          struct defaultConfiguration {
            static let _key = "Default Configuration"
            static let uiSceneConfigurationName = infoPlistString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication", "Default Configuration"], key: "UISceneConfigurationName") ?? "Default Configuration"
            static let uiSceneDelegateClassName = infoPlistString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication", "Default Configuration"], key: "UISceneDelegateClassName") ?? "$(PRODUCT_MODULE_NAME).SceneDelegate"

            fileprivate init() {}
          }

          fileprivate init() {}
        }

        fileprivate init() {}
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }

  /// This `R.string` struct is generated, and contains static references to 2 localization tables.
  struct string {
    /// This `R.string.constants` struct is generated, and contains static references to 1 localization keys.
    struct constants {
      /// Value: [A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,64}
      static let emailRegEx = Rswift.StringResource(key: "emailRegEx", tableName: "constants", bundle: R.hostingBundle, locales: [], comment: nil)

      /// Value: [A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,64}
      static func emailRegEx(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("emailRegEx", tableName: "constants", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "constants", preferredLanguages: preferredLanguages) else {
          return "emailRegEx"
        }

        return NSLocalizedString("emailRegEx", tableName: "constants", bundle: bundle, comment: "")
      }

      fileprivate init() {}
    }

    /// This `R.string.localization` struct is generated, and contains static references to 28 localization keys.
    struct localization {
      /// en translation: Account
      ///
      /// Locales: en, ru, uz-UZ
      static let account = Rswift.StringResource(key: "account", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Activity
      ///
      /// Locales: en, ru, uz-UZ
      static let favorite = Rswift.StringResource(key: "favorite", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Already a member? Sign In
      ///
      /// Locales: en, ru, uz-UZ
      static let alreadyMember = Rswift.StringResource(key: "alreadyMember", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Build your own social network
      ///
      /// Locales: en, ru, uz-UZ
      static let secondWelcomeMsg = Rswift.StringResource(key: "secondWelcomeMsg", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Confirm Password
      ///
      /// Locales: en, ru, uz-UZ
      static let confirmPassword = Rswift.StringResource(key: "confirmPassword", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Create new account
      ///
      /// Locales: en, ru, uz-UZ
      static let createAccount = Rswift.StringResource(key: "createAccount", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Did not get a code? Send again
      ///
      /// Locales: en, ru, uz-UZ
      static let notReceivedCode = Rswift.StringResource(key: "notReceivedCode", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: E-mail or Phone number
      ///
      /// Locales: en, ru, uz-UZ
      static let emailOrPhone = Rswift.StringResource(key: "emailOrPhone", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Enter code
      ///
      /// Locales: en, ru, uz-UZ
      static let enterCode = Rswift.StringResource(key: "enterCode", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Enter your E-mail
      ///
      /// Locales: en, ru, uz-UZ
      static let enterYourEmail = Rswift.StringResource(key: "enterYourEmail", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Enter your details below
      ///
      /// Locales: en, ru, uz-UZ
      static let enterYourDetails = Rswift.StringResource(key: "enterYourDetails", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Enter your phone number
      ///
      /// Locales: en, ru, uz-UZ
      static let enterYourPhoneNumber = Rswift.StringResource(key: "enterYourPhoneNumber", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Forget password?
      ///
      /// Locales: en, ru, uz-UZ
      static let forgetPassword = Rswift.StringResource(key: "forgetPassword", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Forget password? Enter your E-mail or Phone number. We will send confirmation code
      ///
      /// Locales: en, ru, uz-UZ
      static let forgetPasswordEnterDetails = Rswift.StringResource(key: "forgetPasswordEnterDetails", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Next
      ///
      /// Locales: en, ru, uz-UZ
      static let next = Rswift.StringResource(key: "next", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Not a member? Sign Up now
      ///
      /// Locales: en, ru, uz-UZ
      static let notAMember = Rswift.StringResource(key: "notAMember", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Password
      ///
      /// Locales: en, ru, uz-UZ
      static let password = Rswift.StringResource(key: "password", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Search
      ///
      /// Locales: en, ru, uz-UZ
      static let search = Rswift.StringResource(key: "search", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Sign In
      ///
      /// Locales: en, ru, uz-UZ
      static let signIn = Rswift.StringResource(key: "signIn", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Sign In with email
      ///
      /// Locales: en, ru, uz-UZ
      static let signInWithEmail = Rswift.StringResource(key: "signInWithEmail", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Sign In with phone
      ///
      /// Locales: en, ru, uz-UZ
      static let signInWithPhone = Rswift.StringResource(key: "signInWithPhone", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Sign Up
      ///
      /// Locales: en, ru, uz-UZ
      static let signUp = Rswift.StringResource(key: "signUp", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Sign in to BrandNewApp
      ///
      /// Locales: en, ru, uz-UZ
      static let signInToApp = Rswift.StringResource(key: "signInToApp", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Social Network
      ///
      /// Locales: en, ru, uz-UZ
      static let appName = Rswift.StringResource(key: "appName", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: We bring you closer to the things you love.
      ///
      /// Locales: en, ru, uz-UZ
      static let welcomeMsg = Rswift.StringResource(key: "welcomeMsg", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: We have sent a confirmation code to %1$@. Please check your your email or phone number
      ///
      /// Locales: en, ru, uz-UZ
      static let sentConfirmationCode = Rswift.StringResource(key: "sentConfirmationCode", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Welcome Sign up to BrandNewApp
      ///
      /// Locales: en, ru, uz-UZ
      static let signUpToApp = Rswift.StringResource(key: "signUpToApp", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)
      /// en translation: Welcome back
      ///
      /// Locales: en, ru, uz-UZ
      static let welcomeBack = Rswift.StringResource(key: "welcomeBack", tableName: "Localization", bundle: R.hostingBundle, locales: ["en", "ru", "uz-UZ"], comment: nil)

      /// en translation: Account
      ///
      /// Locales: en, ru, uz-UZ
      static func account(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("account", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "account"
        }

        return NSLocalizedString("account", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Activity
      ///
      /// Locales: en, ru, uz-UZ
      static func favorite(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("favorite", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "favorite"
        }

        return NSLocalizedString("favorite", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Already a member? Sign In
      ///
      /// Locales: en, ru, uz-UZ
      static func alreadyMember(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("alreadyMember", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "alreadyMember"
        }

        return NSLocalizedString("alreadyMember", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Build your own social network
      ///
      /// Locales: en, ru, uz-UZ
      static func secondWelcomeMsg(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("secondWelcomeMsg", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "secondWelcomeMsg"
        }

        return NSLocalizedString("secondWelcomeMsg", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Confirm Password
      ///
      /// Locales: en, ru, uz-UZ
      static func confirmPassword(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("confirmPassword", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "confirmPassword"
        }

        return NSLocalizedString("confirmPassword", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Create new account
      ///
      /// Locales: en, ru, uz-UZ
      static func createAccount(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("createAccount", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "createAccount"
        }

        return NSLocalizedString("createAccount", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Did not get a code? Send again
      ///
      /// Locales: en, ru, uz-UZ
      static func notReceivedCode(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("notReceivedCode", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "notReceivedCode"
        }

        return NSLocalizedString("notReceivedCode", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: E-mail or Phone number
      ///
      /// Locales: en, ru, uz-UZ
      static func emailOrPhone(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("emailOrPhone", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "emailOrPhone"
        }

        return NSLocalizedString("emailOrPhone", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Enter code
      ///
      /// Locales: en, ru, uz-UZ
      static func enterCode(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("enterCode", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "enterCode"
        }

        return NSLocalizedString("enterCode", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Enter your E-mail
      ///
      /// Locales: en, ru, uz-UZ
      static func enterYourEmail(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("enterYourEmail", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "enterYourEmail"
        }

        return NSLocalizedString("enterYourEmail", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Enter your details below
      ///
      /// Locales: en, ru, uz-UZ
      static func enterYourDetails(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("enterYourDetails", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "enterYourDetails"
        }

        return NSLocalizedString("enterYourDetails", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Enter your phone number
      ///
      /// Locales: en, ru, uz-UZ
      static func enterYourPhoneNumber(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("enterYourPhoneNumber", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "enterYourPhoneNumber"
        }

        return NSLocalizedString("enterYourPhoneNumber", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Forget password?
      ///
      /// Locales: en, ru, uz-UZ
      static func forgetPassword(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("forgetPassword", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "forgetPassword"
        }

        return NSLocalizedString("forgetPassword", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Forget password? Enter your E-mail or Phone number. We will send confirmation code
      ///
      /// Locales: en, ru, uz-UZ
      static func forgetPasswordEnterDetails(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("forgetPasswordEnterDetails", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "forgetPasswordEnterDetails"
        }

        return NSLocalizedString("forgetPasswordEnterDetails", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Next
      ///
      /// Locales: en, ru, uz-UZ
      static func next(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("next", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "next"
        }

        return NSLocalizedString("next", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Not a member? Sign Up now
      ///
      /// Locales: en, ru, uz-UZ
      static func notAMember(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("notAMember", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "notAMember"
        }

        return NSLocalizedString("notAMember", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Password
      ///
      /// Locales: en, ru, uz-UZ
      static func password(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("password", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "password"
        }

        return NSLocalizedString("password", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Search
      ///
      /// Locales: en, ru, uz-UZ
      static func search(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("search", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "search"
        }

        return NSLocalizedString("search", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Sign In
      ///
      /// Locales: en, ru, uz-UZ
      static func signIn(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("signIn", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "signIn"
        }

        return NSLocalizedString("signIn", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Sign In with email
      ///
      /// Locales: en, ru, uz-UZ
      static func signInWithEmail(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("signInWithEmail", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "signInWithEmail"
        }

        return NSLocalizedString("signInWithEmail", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Sign In with phone
      ///
      /// Locales: en, ru, uz-UZ
      static func signInWithPhone(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("signInWithPhone", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "signInWithPhone"
        }

        return NSLocalizedString("signInWithPhone", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Sign Up
      ///
      /// Locales: en, ru, uz-UZ
      static func signUp(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("signUp", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "signUp"
        }

        return NSLocalizedString("signUp", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Sign in to BrandNewApp
      ///
      /// Locales: en, ru, uz-UZ
      static func signInToApp(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("signInToApp", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "signInToApp"
        }

        return NSLocalizedString("signInToApp", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Social Network
      ///
      /// Locales: en, ru, uz-UZ
      static func appName(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("appName", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "appName"
        }

        return NSLocalizedString("appName", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: We bring you closer to the things you love.
      ///
      /// Locales: en, ru, uz-UZ
      static func welcomeMsg(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("welcomeMsg", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "welcomeMsg"
        }

        return NSLocalizedString("welcomeMsg", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: We have sent a confirmation code to %1$@. Please check your your email or phone number
      ///
      /// Locales: en, ru, uz-UZ
      static func sentConfirmationCode(_ value1: String, preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          let format = NSLocalizedString("sentConfirmationCode", tableName: "Localization", bundle: hostingBundle, comment: "")
          return String(format: format, locale: applicationLocale, value1)
        }

        guard let (locale, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "sentConfirmationCode"
        }

        let format = NSLocalizedString("sentConfirmationCode", tableName: "Localization", bundle: bundle, comment: "")
        return String(format: format, locale: locale, value1)
      }

      /// en translation: Welcome Sign up to BrandNewApp
      ///
      /// Locales: en, ru, uz-UZ
      static func signUpToApp(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("signUpToApp", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "signUpToApp"
        }

        return NSLocalizedString("signUpToApp", tableName: "Localization", bundle: bundle, comment: "")
      }

      /// en translation: Welcome back
      ///
      /// Locales: en, ru, uz-UZ
      static func welcomeBack(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("welcomeBack", tableName: "Localization", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "Localization", preferredLanguages: preferredLanguages) else {
          return "welcomeBack"
        }

        return NSLocalizedString("welcomeBack", tableName: "Localization", bundle: bundle, comment: "")
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}
