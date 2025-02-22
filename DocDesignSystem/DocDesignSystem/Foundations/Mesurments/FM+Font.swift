//
//  FontLetterSpacing.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 09/10/2024.
//

import Foundation

public extension DesignSystem.Foundations.Measurements.Font {
    /// Returns the appropriate letter spacing based on the app's current language setting.
    ///
    /// ## Usage
    /// ```swift
    /// let spacing = DesignSystem.Foundations.Measurements.Font.letterSpacing
    /// textView.letterSpacing = spacing
    /// ```
    static var letterSpacing: CGFloat {
        switch LocalizationSettings.shared.getLanguage() {
        case .english:
            0.7
        case .arabic:
            0
        }
    }
}

public extension DesignSystem.Foundations.Measurements.Font {
    /// Returns the appropriate line spacing based on the app's current language setting.
    ///
    /// ## Usage
    /// ```swift
    /// let spacing = DesignSystem.Foundations.Measurements.Font.lineSpacing
    /// textView.letterSpacing = spacing
    /// ```
    static var lineSpacing: CGFloat {
        switch LocalizationSettings.shared.getLanguage() {
        case .english:
            10
        case .arabic:
            8
        }
    }
}
