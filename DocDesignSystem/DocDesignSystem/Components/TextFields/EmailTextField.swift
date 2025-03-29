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
    @Binding var text: Email
    @State private var fieldText: String

    public init(text: Binding<Email>) {
        _text = text
        _fieldText = State(wrappedValue: text.wrappedValue.value)
    }

    public var body: some View {
        PrimaryTextField(
            text: $fieldText,
            placeHolder: L10n.Authentication.email
        )
        .keyboardType(.emailAddress)
        .textContentType(.emailAddress)
        .environment(\.primaryTextFieldState, state())
        .onChange(of: fieldText) { newValue in
            text = Email(value: newValue)
        }
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

@available(iOS 17.0, *)
#Preview {
    @Previewable @State var text: Email = Email(value: "")
    EmailTextField(text: $text)
        .padding()
}
