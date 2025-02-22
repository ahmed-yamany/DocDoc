//
//  Language+Bundle.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 22/02/2025.
//
import Foundation

extension Language {
    /// Retrieves the localization bundle for a given language and localization type.
    /// Useful for Loading language-specific resources dynamically
    ///
    /// - Parameters:
    ///   - localization: The target localization identifier (e.g., `"en"` or `"ar"`).
    ///   - type: The type of localization resource (`.strings` for localized text, `.assets` for localized images/assets).
    ///   
    /// - Returns: A `Bundle?` instance for the requested localization, or `nil` if not found.
    public func bundle(forLocalizationTable table: String) -> Bundle? {
        guard let path = path(forLocalizationTable: table) else {
            return nil
        }
        
        return Bundle(path: path)
    }

    private func path(forLocalizationTable table: String) -> String? {
        Bundle(for: LocalizationSettings.self)
            .path(forResource: identifier, ofType: "lproj", inDirectory: nil, forLocalization: table)
    }
}
