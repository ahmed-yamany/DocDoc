//
//  OnboardingFlow.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/03/2025.
//

import Coordinator
import SwiftUI

protocol OnboardingFlowInterface {
    func navigateToLogin()
    func navigateToSignup()
}

struct OnboardingFlow: OnboardingFlowInterface, View {
    @StateObject private var router = NavigationStackRouter()

    var body: some View {
        RoutableNavigationStack(router: router)
            .onAppear {
                navigateToOnboarding()
            }
    }

    func navigateToOnboarding() {
        OnboardingCoordinator(router: router).start()
    }

    func navigateToLogin() {
    }

    func navigateToSignup() {
    }
}
