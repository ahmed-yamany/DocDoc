//
//  SignupFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 17/03/2025.
//

import SwiftUI

struct SignupFactory {
    typealias ViewType = SignupView

    static func view(_ coordinator: SignupCoordinator) -> ViewType {
        SignupView(coordinator: coordinator)
    }

    static func preview() -> some View {
        SignupView(coordinator: AuthenticatinFlow())
    }
}
