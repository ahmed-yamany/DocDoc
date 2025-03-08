//
//  BorderRadius.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 26/09/2024.
//

import Foundation

/// A set of predefined border radius values used in the Design System.
///
///
/// Usage example:
/// ```swift
/// let cornerRadius = DesignSystem.Foundations.Measurements.BorderRadius.medium
/// ```
public extension DesignSystem.Foundations.Measurements {
    enum BorderRadius {
        /// Extra-extra small border radius (2 pts).
        public static let xxSmall: CGFloat = 2

        /// Border radius optimized for desktop screens (3 pts).
        public static let desktop: CGFloat = 3

        /// Extra small border radius (4 pts).
        public static let xSmall: CGFloat = 4

        /// Small border radius (6 pts).
        public static let small: CGFloat = 6

        /// Medium border radius (8 pts).
        public static let medium: CGFloat = 10

        /// Extra medium border radius (12 pts).
        public static let xMedium: CGFloat = 12

        /// Large border radius (16 pts).
        public static let large: CGFloat = 16

        /// Fully rounded border radius (100 pts).
        public static let full: CGFloat = 100

        /// The default border radius (6 pts).
        ///
        /// Equivalent to `small`.
        public static var `default`: CGFloat {
            Self.small
        }
    }
}
