//
//  SigninFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 17/03/2025.
//

import SwiftUI

struct SigninFactory {
    typealias ViewType = SigninView

    static func view(_ coordinator: SigninCoordinator) -> ViewType {
        return SigninView(coordinator: coordinator)
    }

    static func preview() -> some View {
        Self.view(AuthenticatinFlow())
    }
}
