//
//  PasswordTextField.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 01/03/2025.
//

import SwiftUI
import Utilities

public struct PasswordTextField: View {
    
    @State private var isSecured: Bool = true
    @State private var text: String
    @Environment(\.primaryTextFieldState) private var primaryTextFieldState
    @Binding var password: Password
    
    public init(password: Binding<Password>) {
        _password = password
        _text = State(wrappedValue: password.wrappedValue.value)
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
        .environment(\.primaryTextFieldState, state())
        .onChange(of: text) { newValue in
            password = Password(value: newValue)
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
            try password.validate()
            return primaryTextFieldState
        } catch {
            return .error(error.localizedDescription)
        }
    }
}
