//
//  PrimaryTextField.swift
//  SSDesignSystem
//
//  Created by Ahmed Yamany on 23/02/2025.
//

import SwiftUI

public struct PrimaryTextField<Leading: View, Trailing: View>: View {
    @Binding var text: String

    let placeHolder: String
    let isSecured: Bool

    @ViewBuilder var leading: Leading
    @ViewBuilder var trailing: Trailing
    @Environment(\.primaryTextFieldState) var state: PrimaryTextFieldState

    public init(
        text: Binding<String>,
        placeHolder: String,
        isSecured: Bool = false,
        state: PrimaryTextFieldState = .normal,
        @ViewBuilder leading: () -> Leading = { EmptyView() },
        @ViewBuilder trailing: () -> Trailing = { EmptyView() }
    ) {
        _text = text
        self.placeHolder = placeHolder
        self.isSecured = isSecured
        self.leading = leading()
        self.trailing = trailing()
    }

    public var body: some View {
        HStack {
            leading
            textField
            trailing
        }
        .padding(.horizontal, DesignSystem.Tokens.Measurements.Padding.textfieldContent)
        .frame(maxWidth: .infinity)
        .frame(height: DesignSystem.Tokens.Measurements.Height.primaryTextField)
        .background(shape.fill(DesignSystem.Tokens.Colors.primaryTextFieldBackground))
        .overlay(
            shape
                .stroke(lineWidth: DesignSystem.Foundations.Measurements.BorderWidth.default)
                .fill(borderColor)
        )
    }

    private var textField: some View {
        Group {
            if isSecured {
                SecureField(placeHolder, text: $text)
            } else {
                TextField(placeHolder, text: $text)
            }
        }
        .font(.caption1, weight: .semiBold)
    }

    private var shape: some Shape {
        RoundedRectangle(cornerRadius: DesignSystem.Foundations.Measurements.BorderRadius.large)
    }

    private var borderColor: Color {
        switch state {
        case .normal:
            DesignSystem.Tokens.Colors.primaryTextFieldBorder
        case .error:
            DesignSystem.Tokens.Colors.primaryError
        case .focused:
            DesignSystem.Tokens.Colors.primary
        }
    }
}

#Preview {
    PrimaryTextField(
        text: .constant(""),
        placeHolder: "Email",
        isSecured: true,
        leading: {
            DesignSystem.Tokens.Icons.alert
        })
        .padding()
        .environment(\.primaryTextFieldState, .error("error"))
}
