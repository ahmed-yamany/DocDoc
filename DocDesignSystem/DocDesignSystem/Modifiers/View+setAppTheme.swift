//
//  View+setAppTheme.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 29/03/2025.
//

import SwiftUI

public extension EnvironmentValues {
    @Entry
    var theme: AppTheme = .default
}

public extension View {
    func setAppTheme(_ theme: AppTheme) -> some View {
        environment(\.theme, theme)
    }
}
