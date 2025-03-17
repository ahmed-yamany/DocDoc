//
//  SignupView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 17/03/2025.
//

import SwiftUI

struct SignupView: View {
    let coordinator: SignupCoordinator
    
    var body: some View {
        VStack {
            Text("Sign up view ")
            Button("create account") {
                coordinator.navigateToCompleteProfile()
            }
            
            Button("sign in ") {
                coordinator.navigateToSignIn()
            }
        }
    }
}

#Preview {
    SignupFactory.preview()
}
