//
//  SigninView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/02/2025.
//

import SwiftUI

struct SigninView: View {
    let coordinator: SigninCoordinator
    
    var body: some View {
        VStack {
            Text("sign in screen")
            
            Button("navigate to forgot passwored") {
                coordinator.navigateToForgotPassword()
            }
            
            Button("navigate to Sign up") {
                coordinator.navigateToSignup()
            }
            
            Button("navigate to home") {
                coordinator.navigateCheckAuthentication()
            }
        }
    }

}

#Preview {
    SigninFactory.preview()
}
