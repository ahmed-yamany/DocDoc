//
//  PasswordTextField.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 01/03/2025.
//

import SwiftUI
import Utilities

public struct PasswordTextField: View {
    @Binding var text: Password
    @State private var isSecured: Bool = true
    @State private var fieldText: String
    @Environment(\.primaryTextFieldState) private var primaryTextFieldState

    public init(text: Binding<Password>) {
        _text = text
        _fieldText = State(wrappedValue: "")
    }

    public var body: some View {
        PrimaryTextField(
            text: $fieldText,
            placeHolder: L10n.Authentication.password,
            isSecured: isSecured,
            trailing: { trailingImage()
            }
        )
        .textContentType(.password)
        .environment(\.primaryTextFieldState, state())
        .onChange(of: fieldText) { newValue in
            text = Password(value: newValue)
        }
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
    
    func state() -> PrimaryTextFieldState {
        do {
            try text.validate()
            return primaryTextFieldState
        } catch {
            return .error(error.localizedDescription)
        }
    }
}
