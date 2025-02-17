//
//  swiftgen_localized.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 22/02/2025.
//

import Foundation

import os

/// Retrieves a localized string dynamically at runtime for SwiftGen-generated localization files.
/// - Purpose:
///   - Enables real-time localization updates without restarting the app.
///   - Works with SwiftGen-generated localization files, allowing easy key-value lookups.
///   - Ensures fallback behavior in case a key or localization file is missing.
/// - Parameters:
///   - key: The localization key.
///   - table: The localization table name.
///   - fallbackValue: The default value to use if the key is not found.
/// - Returns: A localized string corresponding to the provided key, or the fallback value if localization fails.
func swiftgen_localized(forKey key: String, table: String, fallbackValue value: String) -> String {
    guard let bundle = LocalizationSettings.shared.getLanguage().bundle(forLocalizationTable: table) else {
        return value // Return fallback if bundle is missing
    }

    return bundle.localizedString(forKey: key, value: value, table: table)
}
