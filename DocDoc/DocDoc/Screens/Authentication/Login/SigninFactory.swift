//
//  SigninFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 17/03/2025.
//

import SwiftUI

@MainActor
struct SigninFactory {
    typealias ViewType = SigninView<SiginViewModelImpl>

    private static func viewModel() -> SiginViewModelImpl {
        SiginViewModelImpl()
    }

    static func view(_ coordinator: SigninCoordinator) -> ViewType {
        return SigninView(coordinator: coordinator, viewModel: viewModel())
    }

    static func preview() -> some View {
        Self.view(AuthenticatinFlow())
    }
}
