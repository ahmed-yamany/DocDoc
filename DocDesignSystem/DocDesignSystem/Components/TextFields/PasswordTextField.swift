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
    @Binding var hasError: Bool
    
    public init(text: Binding<String>,hasError: Binding<Bool>) {
        _text = text
        _hasError = hasError
    }
    
    public var body: some View {
     PrimaryTextField(text: $text, hasError: $hasError,
                      placeHolder: L10n.Authentication.password,
                      isSecured: isSecured,
                      trailing: {trailingImage()}
     )
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
