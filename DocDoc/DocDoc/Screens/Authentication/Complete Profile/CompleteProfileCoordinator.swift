//
//  CompleteProfileCoordinator.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 17/03/2025.
//

import Foundation

protocol CompleteProfileCoordinator {
    func navigateToOTPVerification()
}

extension AuthenticatinFlow: CompleteProfileCoordinator {}
