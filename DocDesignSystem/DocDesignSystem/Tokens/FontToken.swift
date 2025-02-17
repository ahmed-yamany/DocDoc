//
//  FontToken.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 09/10/2024.
//

import SwiftUI

/// Represents a font token with a predefined size and text style.
public struct FontToken {
    /// The font size in points.
    let size: CGFloat

    /// The corresponding `Font.TextStyle` for dynamic type support.
    let style: Font.TextStyle
}

public extension FontToken {
    /// A large title font (41 pts).
    static let largeTitle = FontToken(size: 41, style: .largeTitle)

    /// A title font (34 pts).
    static let title = FontToken(size: 34, style: .title)

    /// A secondary title font (28 pts).
    static let title2 = FontToken(size: 28, style: .title2)

    /// A tertiary title font (25 pts).
    static let title3 = FontToken(size: 25, style: .title3)

    /// A headline font (22 pts).
    static let headline = FontToken(size: 22, style: .headline)

    /// A body text font (22 pts).
    static let body = FontToken(size: 22, style: .body)

    /// A callout font (21 pts).
    static let callout = FontToken(size: 21, style: .callout)

    /// A subheadline font (20 pts).
    static let subheadline = FontToken(size: 20, style: .subheadline)

    /// A footnote font (18 pts).
    static let footnote = FontToken(size: 18, style: .footnote)

    /// A caption font (16 pts).
    static let caption1 = FontToken(size: 16, style: .caption)

    /// A secondary caption font (13 pts).
    static let caption2 = FontToken(size: 13, style: .caption2)
}
