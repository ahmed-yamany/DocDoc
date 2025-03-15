//
//  View+primaryTextFieldState.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 15/03/2025.
//
import SwiftUI

public extension EnvironmentValues {
    @Entry var primaryTextFieldState: PrimaryTextFieldState = .normal
}


public extension View {
    func setPrimaryTextFieldState(_ state: PrimaryTextFieldState) -> some View {
        environment(\.primaryTextFieldState, state)
    }
}
