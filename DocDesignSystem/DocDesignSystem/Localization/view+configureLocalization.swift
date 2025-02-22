//
//  view+configureLanguageSettings.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 22/02/2025.
//

import SwiftUI

private struct LanguageModifier: ViewModifier {
    @ObservedObject var languageSettings = LocalizationSettings.shared

    func body(content: Content) -> some View {
        content
            .environment(\.locale, languageSettings.language.local)
            .environment(\.layoutDirection, languageSettings.language.layoutDirection)
            .id(languageSettings.language) // It ensures that the view gets a unique identity based on the language.
        // If the language changes, the view will be re-created with the new language settings, ensuring UI updates accordingly.
    }
}

public extension View {
    func configureLocalization() -> some View {
        modifier(LanguageModifier())
    }
}
