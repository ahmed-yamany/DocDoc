//
//  OnboardingView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/03/2025.
//

import SwiftUI

struct OnboardingView: View {
    let coordinator: OnboardingCoordinator
    
    var body: some View {
        VStack {
            Text("onboarding screen")
            Button("navigate to login") {
                coordinator.navigateToSignIn()
            }
        }
    }
}

#Preview {
    OnboardingFactory.preview()
}
