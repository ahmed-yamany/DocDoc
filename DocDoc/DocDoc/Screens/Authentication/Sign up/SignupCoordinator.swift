//
//  SignupCoordinator.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 17/03/2025.
//

import Foundation

protocol SignupCoordinator {
    func navigateToSignIn()
    func navigateToCompleteProfile()
}

extension AuthenticatinFlow: SignupCoordinator {}
