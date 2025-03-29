//
//  AppTheme.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 29/03/2025.
//
import Foundation

public struct AppTheme {
    public let colors: ThemeColors
//    let fonts: ThemeFonts
}

public extension AppTheme {
    static let `default` = AppTheme(colors: ThemeColors())
}
