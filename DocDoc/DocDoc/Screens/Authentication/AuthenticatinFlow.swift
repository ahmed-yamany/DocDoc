//
//  OnboardingFlow.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/03/2025.
//

import Coordinator
import SwiftUI

struct AuthenticatinFlow: View {
    @StateObject private var router = NavigationStackRouter()
    @EnvironmentObject private var appManager: AppManager

    var body: some View {
        RoutableNavigationStack(router: router)
            .animation(.easeInOut(duration: 0.6), value: router.rootView)
            .onAppear {
                navigateToOnboarding()
            }
    }

    func navigateToOnboarding() {
        let view = OnboardingFactory.view(self)
        router.setView(AnyHashableView(view), animated: true, completion: nil)
    }

    func navigateToSignIn() {
        let view = SigninFactory.view(self)
        router.setView(AnyHashableView(view), animated: true, completion: nil)
    }

    func navigateToSignup() {
        let view = SignupFactory.view(self)
        router.setView(AnyHashableView(view), animated: true, completion: nil)
    }

    func navigateToForgotPassword() {
        let view = ForgotPasswordFactory.view(self)
        router.push(AnyHashableView(view), animated: true, completion: nil)
    }

    func navigateCheckAuthentication() {
        appManager.checkAuthentication()
    }

    func navigateToCompleteProfile() {
        let view = CompleteProfileFactory.view(self)
        router.push(AnyHashableView(view), animated: true, completion: nil)
    }

    func navigateToOTPVerification() {
        let view = OTPFactory.view(self)
//        router.push(AnyHashableView(view), animated: true, completion: nil)
        router.present(AnyHashableView(view), animated: true, style: .sheet, completion: nil)
        router.present(AnyHashableView(view), animated: true, style: .sheet, completion: nil)
    }
}
