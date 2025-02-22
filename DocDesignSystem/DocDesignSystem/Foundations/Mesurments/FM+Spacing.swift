//
//  Spacing.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 26/09/2024.
//

import Foundation

/// A set of predefined spacing values for consistent layout design.
///
/// The spacing scale follows a structured progression (2, 4, 8, 12, etc.)
/// to maintain visual rhythm across UI elements.
///
/// ## Usage
/// ```swift
/// VStack(spacing: DesignSystem.Foundations.Measurements.Spacing.medium) {
///     Text("Hello, World!")
///     Text("Spacing example")
/// }
/// ```
public extension DesignSystem.Foundations.Measurements {
    enum Spacing {
        /// 2 pts - Minimal spacing, often used for fine adjustments.
        public static let xxxSmall: CGFloat = 2
        /// 4 pts - Small padding for tight layouts.
        public static let xxSmall: CGFloat = 4
        /// 8 pts - Suitable for spacing between small elements.
        public static let xSmall: CGFloat = 8
        /// 12 pts - Common for component padding.
        public static let small: CGFloat = 12
        /// 16 pts - Standard spacing for balanced layouts.
        public static let medium: CGFloat = 16
        /// 20 pts - Slightly larger for breathing room.
        public static let xMedium: CGFloat = 20
        /// 24 pts - Section or group spacing.
        public static let large: CGFloat = 24
        /// 32 pts - Used for major layout divisions.
        public static let xLarge: CGFloat = 32
        /// 44 pts - Large margins for distinct separation.
        public static let xxLarge: CGFloat = 44
        /// 60 pts - Maximum spacing, often for major sections.
        public static let xxxLarge: CGFloat = 60
    }
}
