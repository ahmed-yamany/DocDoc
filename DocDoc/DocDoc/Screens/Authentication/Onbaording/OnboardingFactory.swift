//
//  OnboardingFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 17/03/2025.
//
import SwiftUI

struct OnboardingFactory {
    
    static func view(_ coordinator: OnboardingCoordinator) -> OnboardingView {
        OnboardingView(coordinator: coordinator)
    }

    static func preview() -> some View {
        Self.view(AuthenticatinFlow())
    }
}
