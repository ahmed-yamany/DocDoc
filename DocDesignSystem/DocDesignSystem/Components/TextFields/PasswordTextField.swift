//
//  PasswordTextField.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 01/03/2025.
//

import SwiftUI

public struct PasswordTextField: View {
    @Binding var text: String
    @State private var isSecured: Bool = true

    public init(text: Binding<String>) {
        _text = text
    }

    public var body: some View {
        PrimaryTextField(
            text: $text,
            placeHolder: L10n.Authentication.password,
            isSecured: isSecured,
            trailing: { trailingImage()
            }
        )
        .textContentType(.password)
    }

    private func trailingImage() -> some View {
        Button(action: {
            isSecured.toggle()
        }) {
            Group {
                if isSecured {
                    DesignSystem.Tokens.Icons.openEye
                } else {
                    DesignSystem.Tokens.Icons.closeEye
                }
            }
        }.buttonStyle(.plain)
    }
}
