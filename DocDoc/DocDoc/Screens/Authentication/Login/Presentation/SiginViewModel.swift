//
//  SiginViewModel.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 29/03/2025.
//

import SwiftUI
import Utilities
import DocDesignSystem

public protocol SiginViewModel: ObservableObject {
    var email: Email { get set }
    var password: Password { get set }
    var rememberMe: Bool { get set }
    var country: Country { get set }
    var phoneNumber: PhoneNumber  { get set }

    func didTapforgotPassword()
    func didTapLogin()
    func didTapSignup()
}

@Observable
final class SigninViewModelImp: SiginViewModel {
    var email: Email = ""
    var password: Password = ""
    var rememberMe: Bool = false
    var country: Country = .init(icon: Image(uiImage: .add), name: "Egypt", code: "20")
    var phoneNumber: PhoneNumber = ""
    
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
