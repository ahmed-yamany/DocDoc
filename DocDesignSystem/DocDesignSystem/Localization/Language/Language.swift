//
//  Language.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 22/02/2025.
//
import Foundation

/// Represents the supported app languages.
public enum Language: String, CaseIterable, Hashable {
    /// English language (identifier: "en").
    case english = "en"
    /// Arabic language (identifier: "ar").
    case arabic = "ar"

    /// Returns the language identifier used in localization files.
    var identifier: String {
        rawValue
    }
}
