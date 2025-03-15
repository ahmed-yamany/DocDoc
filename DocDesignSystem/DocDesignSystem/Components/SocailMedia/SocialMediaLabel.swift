//
//  SocialMediaLabel.swift
//  DocDesignSystem
//
//  Created by Mahmoud Elkady on 11/03/2025.
//

import SwiftUI

public struct SocialMediaLabel: View {
    let icon: Image
    let size: CGFloat = 46

    public init(icon: Image) {
        self.icon = icon
    }

    public var body: some View {
        icon
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: size * 0.6, height: size * 0.6)
            .frame(width: size, height: size)
            .background(DesignSystem.Tokens.Colors.primaryButtonForgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: size / 2))
    }
}
