//
//  OTPCoordinator.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import Foundation

protocol OTPCoordinator {
    func navigateCheckAuthentication()
}

extension AuthenticatinFlow: OTPCoordinator {}
