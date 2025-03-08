//
//  PrimaryButtonStyle.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 01/03/2025.
//

import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .frame(height: DesignSystem.Tokens.Measurements.Height.primaryButton)
            .background(backgroundColor(configuration))
            .clipShape(RoundedRectangle(cornerRadius: DesignSystem.Foundations.Measurements.BorderRadius.medium))
            .foregroundStyle(DesignSystem.Tokens.Colors.primaryButtonForgroundColor)
            .font(.caption1, weight: .semiBold)
    }

    private func backgroundColor(_ configuration: Configuration) -> Color {
        if configuration.isPressed {
            DesignSystem.Tokens.Colors.primaryButtonPressBackground
        } else {
            DesignSystem.Tokens.Colors.primaryButtonBackground
        }
    }
}

public extension ButtonStyle where Self == PrimaryButtonStyle {
    static var primary: PrimaryButtonStyle {
        .init()
    }
}

#Preview(body: {
    Button {
    } label: {
        HStack {
            Text(L10n.Localizable.hello)
            DesignSystem.Tokens.Icons.leftArrow
            DesignSystem.Tokens.Icons.alert.renderingMode(.template)
        }
    }
    .buttonStyle(.primary)
    .padding()
})
