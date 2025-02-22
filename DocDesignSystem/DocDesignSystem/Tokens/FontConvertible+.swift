//
//  TypographyTokens.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 08/02/2025.
//

import Foundation

/// A set of font styles that dynamically switch between fonts based on language settings.
///
/// This ensures consistent typography across different languages.
/// - **English:** Uses `Inter` font family.
/// - **Arabic:** Uses `Cairo` font family.
///
/// ## Usage
/// ```swift
/// Text("Hello, World!")
///    .font(weight.swiftUIFont(size: 12, relativeTo: .title))
/// ```
///
/// ## Considerations
/// - Uses `LocalizationSettings.shared.getLanguage()` to determine language.
/// - Supports multiple font weights for flexibility in design.
public extension FontConvertible {
    
    /// The default regular font.
    static var regular: FontConvertible {
        switch LocalizationSettings.shared.getLanguage() {
        case .english:
            FontFamily.Inter.regular
        default:
            FontFamily.Cairo.regular
        }
    }

    /// A black-weight font.
    static var black: FontConvertible {
        switch LocalizationSettings.shared.getLanguage() {
        case .english:
            FontFamily.Inter.black
        case .arabic:
            FontFamily.Cairo.black
        }
    }

    /// A bold-weight font.
    static var bold: FontConvertible {
        switch LocalizationSettings.shared.getLanguage() {
        case .english:
            FontFamily.Inter.bold
        case .arabic:
            FontFamily.Cairo.bold
        }
    }

    /// An extra-bold-weight font.
    static var extraBold: FontConvertible {
        switch LocalizationSettings.shared.getLanguage() {
        case .english:
            FontFamily.Inter.extraBold
        case .arabic:
            FontFamily.Cairo.extraBold
        }
    }

    /// An extra-light-weight font.
    static var extraLight: FontConvertible {
        switch LocalizationSettings.shared.getLanguage() {
        case .english:
            FontFamily.Inter.extraLight
        case .arabic:
            FontFamily.Cairo.extraLight
        }
    }

    /// A light-weight font.
    static var light: FontConvertible {
        switch LocalizationSettings.shared.getLanguage() {
        case .english:
            FontFamily.Inter.light
        case .arabic:
            FontFamily.Cairo.light
        }
    }

    /// A medium-weight font.
    static var medium: FontConvertible {
        switch LocalizationSettings.shared.getLanguage() {
        case .english:
            FontFamily.Inter.medium
        case .arabic:
            FontFamily.Cairo.medium
        }
    }

    /// A semi-bold-weight font.
    static var semiBold: FontConvertible {
        switch LocalizationSettings.shared.getLanguage() {
        case .english:
            FontFamily.Inter.semiBold
        case .arabic:
            FontFamily.Cairo.semiBold
        }
    }
}
