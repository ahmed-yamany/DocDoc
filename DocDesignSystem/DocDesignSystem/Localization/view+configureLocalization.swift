//
//  view+configureLanguageSettings.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 22/02/2025.
//

import SwiftUI

/// A view modifier that automatically applies localization settings to a SwiftUI view.
///
/// **Purpose:**
/// - Automatically applies localization settings (language and layout direction) to a SwiftUI view.
///
/// **Why use `.id(languageSettings.language)`?**
/// - Forces a view refresh when the language changes.
/// - Ensures that right-to-left (RTL) layout updates take effect immediately.
/// - Prevents UI inconsistencies when switching languages dynamically.
private struct LanguageModifier: ViewModifier {
    // ⚠️ Important: This ensures the view updates when the language changes.
    // Without this, SwiftUI won’t detect changes in LocalizationSettings,
    // and the UI won’t refresh when the language is updated.
    @ObservedObject var languageSettings = LocalizationSettings.shared

    func body(content: Content) -> some View {
        content
            .environment(\.locale, languageSettings.language.local)
            .environment(\.layoutDirection, languageSettings.language.layoutDirection)
            .animation(.easeInOut(duration: 0.3), value: languageSettings.language)
            .id(languageSettings.language)
    }
}

public extension View {
    /// Applies the `LanguageModifier` to a view, enabling automatic localization updates.
    func configureLocalization() -> some View {
        modifier(LanguageModifier())
    }
}
