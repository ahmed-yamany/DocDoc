//
//  PrimaryTextField.swift
//  SSDesignSystem
//
//  Created by Ahmed Yamany on 23/02/2025.
//

import SwiftUI

public struct PrimaryTextField: View {
    @Binding var text: String
    let placeholder: String
    let isSecured: Bool
    var leadingView: (() -> AnyView)?
    let trailingView: (() -> AnyView)?

    public init(
        text: Binding<String>,
        placeholder: String,
        isSecured: Bool = false,
        leadingView: (() -> AnyView)? = nil,
        trailingView: (() -> AnyView)? = nil
    ) {
        _text = text
        self.placeholder = placeholder
        self.leadingView = leadingView
        self.trailingView = trailingView
        self.isSecured = isSecured
    }

    public var body: some View {
        HStack {
            leadingView?()
            textField
            trailingView?()
        }
        .padding(.horizontal, DesignSystem.Tokens.Measurements.Padding.textfieldContent)
        .frame(maxWidth: .infinity)
        .frame(height: DesignSystem.Tokens.Measurements.Height.primaryTextField)
        .background(DesignSystem.Tokens.Colors.primaryTextFieldBackground)
        .clipShape(shape)
        .background {
            shape
                .stroke(lineWidth: DesignSystem.Foundations.Measurements.BorderWidth.default)
                .fill(DesignSystem.Tokens.Colors.primaryTextFieldBorder)
        }
    }

    private var textField: some View {
        Group {
            if isSecured {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
            }
        }
        .font(.caption1, weight: .semiBold)
    }

    private var shape: some Shape {
        RoundedRectangle(cornerRadius: DesignSystem.Foundations.Measurements.BorderRadius.large)
    }
}

@available(iOS 17.0, *)
#Preview {
//    @Previewable @State var text: String = ""

    PrimaryTextField(
        text: .constant("ahmed"),
        placeholder: "Email",
        isSecured: false,
        leadingView: { AnyView(DesignSystem.Tokens.Icons.alert) },
        trailingView: { AnyView(DesignSystem.Tokens.Icons.alert) }
    )
    .padding()
}
