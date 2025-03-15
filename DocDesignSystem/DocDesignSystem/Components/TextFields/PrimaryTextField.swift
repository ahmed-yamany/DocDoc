//
//  PrimaryTextField.swift
//  SSDesignSystem
//
//  Created by Ahmed Yamany on 23/02/2025.
//

import SwiftUI

public struct PrimaryTextField<Leading: View, Trailing: View>: View {
    
    @Binding var text: String
    @Binding var hasError: Bool
    @FocusState private var isFocused: Bool
    var placeHolder: String
    var isSecured: Bool = false
    var keyboardType: UIKeyboardType = .default
    var leading: Leading
    var trailing: Trailing
   
    public init(text: Binding<String>, hasError: Binding<Bool>, placeHolder: String,
         isSecured: Bool = false,
         keyboardType: UIKeyboardType = .default,
         @ViewBuilder leading: () -> Leading =  {EmptyView()},
         @ViewBuilder trailing: () -> Trailing = {EmptyView()}
    ) {
        self._text = text
        self._hasError = hasError
        self.placeHolder = placeHolder
        self.isSecured = isSecured
        self.keyboardType = keyboardType
        self.leading = leading()
        self.trailing = trailing()
    }
    
    
    public var body: some View {
        HStack {
            leading
            textField
            trailing
        }
        .padding(.horizontal,DesignSystem.Tokens.Measurements.Padding.textfieldContent)
        .frame(maxWidth: .infinity)
        .frame(height: DesignSystem.Tokens.Measurements.Height.primaryTextField)
        .background(shape.fill(DesignSystem.Tokens.Colors.primaryTextFieldBackground))
        .overlay(
            shape.stroke(lineWidth: DesignSystem.Foundations.Measurements.BorderWidth.default)
                .fill(borderColor)
        )
    }
    
    private var textField: some View {
        Group {
            if isSecured {
                SecureField(placeHolder, text: $text)
            } else {
                TextField(placeHolder, text: $text)
                    .keyboardType(keyboardType)
                    .focused($isFocused)
          
            }
        }
        .font(.caption1, weight: .semiBold)
    }
    
    private var shape: some Shape {
        RoundedRectangle(cornerRadius: DesignSystem.Foundations.Measurements.BorderRadius.large)
    }
    
    private var borderColor: Color {
        if hasError {
            return DesignSystem.Tokens.Colors.primaryError
        } else if isFocused {
            return DesignSystem.Tokens.Colors.primary
        } else {
            return DesignSystem.Tokens.Colors.primaryTextFieldBorder
        }
    }
}

//#Preview {
//    PrimaryTextField(text: .constant(""), hasError: .constant(true), placeHolder: "Email",isSecured: true, keyboardType: .emailAddress, leading: {
//        DesignSystem.Tokens.Icons.alert
//    }, trailing: {
//        DesignSystem.Tokens.Icons.closeEye
//    })
//    .padding()
//}

