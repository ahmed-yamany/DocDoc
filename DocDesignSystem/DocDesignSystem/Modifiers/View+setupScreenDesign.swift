//
//  View+setupScreenDesign.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 29/03/2025.
//

import SwiftUI

private struct SetupScreenDesignModifier: ViewModifier {
    @Environment(\.theme) private var theme
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, DesignSystem.Foundations.Measurements.Padding.leading)
            .background(theme.colors.primaryBackGroundColor)
    }
}

public extension View {
    func setupScreenDesign() -> some View {
        modifier(SetupScreenDesignModifier())
    }
}

