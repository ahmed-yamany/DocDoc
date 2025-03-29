//
//  SigninFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 17/03/2025.
//

import SwiftUI

struct SigninFactory {
    typealias ViewType = SigninView<SigninViewModelImp>
    
    static private func useCase() -> SigninUseCase {
        SigninUseCaseImb()
    }
    
    static private func viewModel(_ coordinator: SigninCoordinator) -> SigninViewModelImp {
        SigninViewModelImp(coordinator: coordinator, useCase: useCase())
    }

    static func view(_ coordinator: SigninCoordinator) -> ViewType {
        return SigninView(viewModel: viewModel(coordinator))
    }

    static func preview() -> some View {
        Self.view(AuthenticatinFlow())
    }
}
