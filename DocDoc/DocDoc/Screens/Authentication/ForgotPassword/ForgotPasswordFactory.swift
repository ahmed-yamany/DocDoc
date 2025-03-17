//
//  ForgotPasswordFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 17/03/2025.
//

import SwiftUI

struct ForgotPasswordFactory {
    typealias ViewType = ForgoPasswordView

    static func view(_ coordinator: ForgotPasswordCoordinator) -> some View {
        ForgoPasswordView()
    }

    static func preview() -> some View {
        view(AuthenticatinFlow())
    }
}
