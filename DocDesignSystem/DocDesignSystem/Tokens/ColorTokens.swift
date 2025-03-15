//
//  ColorTokens.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 08/02/2025.
//

import SwiftUI

extension DesignSystem.Tokens.Colors {
    static let primary: Color = .blue100
    static let tint: Color = .gray100
    
    static var primaryBackGroundColor: Color { .white }
    
    // MARK: - primary button

    static let primaryButtonBackground: Color = Self.primary
    static let primaryButtonPressBackground: Color = .gray50
    static let primaryButtonForgroundColor: Color = .gray20
    static let primaryError: Color = .red100
    // MARK: Primary TextField
    static let primaryTextFieldBackground: Color = .gray10
    static let primaryTextFieldBorder: Color = .gray30
}
