//
//  SigninCoordinator.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 17/03/2025.
//

import Foundation

protocol SigninCoordinator {
    func navigateToForgotPassword()
    func navigateToSignup()
    func navigateCheckAuthentication()
}

extension AuthenticatinFlow: SigninCoordinator {}
