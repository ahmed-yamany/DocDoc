//
//  LoginView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/02/2025.
//

import SwiftUI
import DocDesignSystem

struct LoginView: View {
    enum Field: Hashable {
          case email, password
      }
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var emailHasError: Bool = false
    @State private var passwordHasError: Bool = false
    @FocusState private var focusedField: Field?
    
//    init(initialEmail: String = "", initialPassword: String = "", initialEmailHasError: Bool = false) {
//        _email = State(initialValue: initialEmail)
//        _password = State(initialValue: initialPassword)
//        _emailHasError = State(initialValue: initialEmailHasError)
//    }
//    
    var body: some View {
        VStack {
            EmailTextField(text: $email, hasError: $emailHasError)
                .focused($focusedField,equals: .email)
                .submitLabel(.next)
                .onSubmit {
                    focusedField = .password
                }
                .onChange(of: email) { newValue in
                    emailHasError = newValue.contains("1")
                }
            PasswordTextField(text: $password, hasError: $passwordHasError)
                .focused($focusedField,equals: .password)
                .submitLabel(.done)
                .onSubmit {
                    focusedField = nil
                }
            
            SocialMediaView(actionGoogle: {}, actionFaceBook: {}, actionApple: {})
        }
        .padding()
    }
}

//#Preview {
//    LoginView(initialEmail: "33")
//}
