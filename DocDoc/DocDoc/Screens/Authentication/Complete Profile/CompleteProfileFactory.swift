//
//  CompleteProfileFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

public struct CompleteProfileFactory {
    typealias ViewType = CompleteProfileView

    static func view(_ coordinator: CompleteProfileCoordinator) -> ViewType {
        CompleteProfileView(coordinator: coordinator)
    }

    static func preview() -> some View {
        view(AuthenticatinFlow())
    }
}
