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
    
    @State var emailErrorMessage: String? = nil
    
    @State var state: PrimaryTextFieldState = .normal
    
    init(initialEmail: String = "", initialPassword: String = "", initialEmailHasError: Bool = false) {
        _email = State(initialValue: initialEmail)
        _password = State(initialValue: initialPassword)
        _emailHasError = State(initialValue: initialEmailHasError)
    }
//    
    var body: some View {
        VStack {
            EmailTextField(text: $email)
                .focused($focusedField,equals: .email)
                .submitLabel(.next)
                .onSubmit {
                    focusedField = .password
                }
                .onChange(of: email) { newValue in
                    if newValue.isEmpty {
                        emailErrorMessage = "Email is empty"
                    } else if newValue.contains("#") {
                        
                    }
                }
                .setPrimaryTextFieldState(emailState())
                
            
            PasswordTextField(text: $password)
                .focused($focusedField,equals: .password)
                .submitLabel(.done)
                .onSubmit {
                    focusedField = nil
                }
                .setPrimaryTextFieldState(focusedField == .password ? .focused : .normal)
            
            SocialMediaView(items: [])
        }
        .padding()
        .onAppear {
            focusedField = .email
        }
        
    }
    
    func emailState() -> PrimaryTextFieldState {
        if let emailErrorMessage  {
            return .error(emailErrorMessage)
        } else if focusedField == .email{
            return .focused
        } else {
            return .normal
        }
    }
}

#Preview {
    LoginView()
}
