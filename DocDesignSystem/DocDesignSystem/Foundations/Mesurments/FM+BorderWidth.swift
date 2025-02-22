//
//  BorderWidth.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 26/09/2024.
//

import UIKit

/// A set of predefined border width values used in the Design System.
///
/// These values define standard border thicknesses in points (pts) or pixels (px),
/// ensuring visual consistency across UI components.
///
/// Usage example:
/// ```swift
/// let borderWidth = DesignSystem.Foundations.Measurements.BorderWidth.default
/// ```
public extension DesignSystem.Foundations.Measurements {
    enum BorderWidth {
        /// A very thin 1-pixel border width.
        ///
        /// This value adapts to different screen resolutions by
        /// dividing `1.0` by the screen scale.
        ///
        /// - Example:
        ///   ```swift
        ///   let thinBorder = BorderWidth.hairline
        ///   ```
        public static let hairline: CGFloat = 1.0 / UIScreen.main.scale

        /// A thin 0.5 pt border width.
        ///
        /// This is often used for subtle separators and low-emphasis borders.
        public static let thin: CGFloat = 0.5

        /// The default border width (1 pt).
        ///
        /// This is used for most standard UI elements with a visible border.
        public static let `default`: CGFloat = 1.0

        /// A thick 2 pt border width, used for active, selected, or highlighted components.
        ///
        /// Useful for indicating focus, selection, or emphasis in the UI.
        public static let active: CGFloat = 2.0
    }
}
