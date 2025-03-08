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
            placeholder: L10n.Authentication.password,
            isSecured: isSecured,
            trailingView: { AnyView(leadingImage()) }
        )
    }
    
    
    private func leadingImage() -> some View {
        Group {
            if isSecured {
                DesignSystem.Tokens.Icons.openEye
            } else {
                DesignSystem.Tokens.Icons.closeEye
            }
        }
        .onTapGesture {
            isSecured.toggle()
        }
    }
}
