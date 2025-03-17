//
//  OTPFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

struct OTPFactory {
    typealias ViewType = OTPView
    
    static func view(_ coordinator: OTPCoordinator) -> ViewType {
        OTPView(coordinator: coordinator)
    }
    
    static func preview() -> some View {
        view(AuthenticatinFlow())
    }
}

