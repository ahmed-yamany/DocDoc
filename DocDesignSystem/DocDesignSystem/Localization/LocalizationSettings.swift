//
//  LocalizationSettings.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 17/09/2024.
//

import Combine
import SwiftUI

/// an interface for managing the app's language settings.
public protocol LocalizationSettingsInterface: ObservableObject {
    /// The currently selected application language.
    var language: Language { get set }

    /// Retrieves the current application language.
    func getLanguage() -> Language

    /// Updates the application language.
    ///
    /// - Parameter language: The new language to be set.
    func setLanguage(_ language: Language)
}

/// A singleton class that manages the application's localization settings.
/// 
/// **KeyFeatures:**
/// - Thread Safety: Uses NSLock to prevent concurrency issues.
/// - Reactivity: Uses @Published to notify UI when the language changes.
///
public final class LocalizationSettings: LocalizationSettingsInterface {
    /// Shared instance of `LocalizationSettings`.
    public static var shared = LocalizationSettings()

    /// A thread-safe lock to prevent race conditions when accessing the language property.
    private let lock = NSLock()

    /// The currently selected language, stored as a published property to trigger UI updates.
    @Published public var language: Language

    /// Initializes the localization settings.
    /// - Determines the initial language based on the system's locale.
    /// - Falls back to English if the detected language is not supported.
    private init() {
        let identifier: String = Locale.current.language.languageCode?.identifier ?? Language.english.identifier
        language = Language(rawValue: identifier) ?? .english
    }

    /// Retrieves the current application language in a thread-safe manner.
    public func getLanguage() -> Language {
        lock.lock()
        defer { lock.unlock() }
        return language
    }

    /// Updates the application language in a thread-safe manner.
    public func setLanguage(_ language: Language) {
        lock.lock()
        defer { lock.unlock() }
        self.language = language
    }
}
