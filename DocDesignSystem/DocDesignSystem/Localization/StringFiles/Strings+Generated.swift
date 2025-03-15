// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum L10n {
  public enum Authentication {
    /// Authentication.strings
    ///   DocDesignSystem
    /// 
    ///   Created by Ahmed Yamany on 01/03/2025.
    public static var email: String { return L10n.tr("Authentication", "email", fallback: "Email") }
    /// Password
    public static var password: String { return L10n.tr("Authentication", "password", fallback: "Password") }
  }
  public enum Localizable {
    /// Localizable.strings
    ///   DocDesignSystem
    /// 
    ///   Created by Ahmed Yamany on 22/02/2025.
    public static var hello: String { return L10n.tr("Localizable", "hello", fallback: "Hello") }
    /// Your Number
    public static var yourNumber: String { return L10n.tr("Localizable", "your-number", fallback: "Your Number") }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = swiftgen_localized(forKey:table:fallbackValue:)(key, table, value)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}
