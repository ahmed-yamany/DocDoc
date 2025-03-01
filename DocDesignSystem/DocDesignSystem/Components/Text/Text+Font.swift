//
//  Font+.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 22/02/2025.
//
import SwiftUI

public extension View {
    /// Applies a font style based on a `FontToken` and a `FontConvertible` weight.
    ///
    /// - Parameters:
    ///   - token: A `FontToken` specifying the font size and text style.
    ///   - weight: A `FontConvertible` defining the font family and weight.
    /// - Returns: A modified `View` with the applied font, letter spacing, and line spacing.
    func font(_ token: FontToken, weight: FontConvertible) -> some View {
        font(weight.swiftUIFont(size: token.size, relativeTo: token.style))
            .tracking(DesignSystem.Foundations.Measurements.Font.letterSpacing)
            .lineSpacing(DesignSystem.Foundations.Measurements.Font.lineSpacing)
    }
}
