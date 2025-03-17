//
//  OnboardingCoordinator.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/03/2025.
//

import SwiftUI
import Coordinator

protocol OnboardingCoordinator {
    func navigateToSignIn()
}

extension AuthenticatinFlow: OnboardingCoordinator {}
