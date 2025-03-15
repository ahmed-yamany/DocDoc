//
//  EmailTextField.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 01/03/2025.
//

import SwiftUI

public struct EmailTextField: View {
    
    @Binding var text: String
    @Binding var hasError: Bool
  
    public init(text: Binding<String>, hasError: Binding<Bool>) {
        _text = text
        _hasError = hasError
    }
    
    public var body: some View {
        PrimaryTextField(text: $text, hasError: $hasError, 
                         placeHolder: L10n.Authentication.email,
                         keyboardType: .emailAddress)
    }

}

//#Preview {
//    EmailTextField(text: .constant("mahmoud"), hasError: .constant(true))
//}

