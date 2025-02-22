//
//  Language+Layout.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 22/02/2025.
//
import SwiftUI

extension Language {
    /// Determines the text layout direction for the language.
    /// Useful when setting up language-based UI layouts.
    public var layoutDirection: LayoutDirection {
        switch self {
        case .english:
            return .leftToRight
        case .arabic:
            return .rightToLeft
        }
    }

    public var local: Locale {
        Locale(identifier: identifier)
    }
}
