//
//  EmailTextField.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 01/03/2025.
//

import SwiftUI

public struct EmailTextField: View {
    @Binding var text: String
    
    public init(text: Binding<String>) {
        _text = text
    }
    
    public var body: some View {
        PrimaryTextField(text: $text, placeholder: L10n.Authentication.email)
    }
}
