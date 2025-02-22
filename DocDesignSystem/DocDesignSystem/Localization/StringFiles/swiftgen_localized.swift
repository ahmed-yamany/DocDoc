//
//  swiftgen_localized.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 22/02/2025.
//


import Foundation
 
func swiftgen_localized(forKey key: String, table: String, fallbackValue value: String) -> String {
    LocalizationSettings.shared
        .getLanguage()
        .bundle(forLocalizationTable: table)!
        .localizedString(forKey: key, value: value, table: table)
}
