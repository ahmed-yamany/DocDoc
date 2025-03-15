//
//  EmailTextField.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 01/03/2025.
//

import SwiftUI

public struct EmailTextField: View {
    @Environment(\.primaryTextFieldState) var primaryTextFieldState
    @Binding var text: String

    public init(text: Binding<String>) {
        _text = text
    }

    public var body: some View {
        PrimaryTextField(
            text: $text,
            placeHolder: L10n.Authentication.email
        )
        .keyboardType(.emailAddress)
        .textContentType(.emailAddress)
        .environment(\.primaryTextFieldState, validate() ? .error("") : primaryTextFieldState)
    }

    func validate() -> Bool {
        false
    }
}

// #Preview {
//    EmailTextField(text: .constant("mahmoud"), hasError: .constant(true))
// }
