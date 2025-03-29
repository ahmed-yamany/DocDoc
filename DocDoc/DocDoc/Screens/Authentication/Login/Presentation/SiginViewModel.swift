//
//  SiginViewModel.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 29/03/2025.
//

import SwiftUI

public protocol SiginViewModel: ObservableObject {
    var email: String { get set }
    var password: String { get set }
    var rememberMe: Bool { get set }

    func didTapforgotPassword()
    func didTapLogin()
    func didTapSignup()
}

@Observable
final class SigninViewModelImp: SiginViewModel {
    var email: String = ""
    var password: String = ""
    var rememberMe: Bool = false
    
    let coordinator: SigninCoordinator
    let useCase: SigninUseCase
    
    init(coordinator: SigninCoordinator, useCase: SigninUseCase) {
        self.coordinator = coordinator
        self.useCase = useCase
    }
    

    func didTapforgotPassword() {
        coordinator.navigateToForgotPassword()
    }

    func didTapLogin() {
        coordinator.navigateCheckAuthentication()
    }

    func didTapSignup() {
        coordinator.navigateToSignup()
    }
}
