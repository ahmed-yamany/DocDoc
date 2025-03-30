//
//  EmailTextField.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 01/03/2025.
//

import SwiftUI
import Utilities

public struct EmailTextField: View {
    @Environment(\.primaryTextFieldState) private var primaryTextFieldState
    @Binding var email: Email
    @State private var text: String

    public init(email: Binding<Email>) {
        _email = email
        _text = State(wrappedValue: email.wrappedValue.value)
    }

    public var body: some View {
        PrimaryTextField(
            text: $text,
            placeHolder: L10n.Authentication.email
        )
        .keyboardType(.emailAddress)
        .textContentType(.emailAddress)
        .environment(\.primaryTextFieldState, state())
        .onChange(of: text) { newValue in
            email = Email(value: newValue)
        }
    }

    func state() -> PrimaryTextFieldState {
        do {
            try email.validate()
            return primaryTextFieldState
        } catch {
            return .error(error.localizedDescription)
        }
    }
}

@available(iOS 17.0, *)
#Preview {
    @Previewable @State var text: Email = Email(value: "")
    EmailTextField(email: $text)
        .padding()
}
