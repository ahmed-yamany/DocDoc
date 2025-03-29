//
//  AppManager.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/03/2025.
// 
import SwiftUI
import DocDesignSystem

@Observable
final class AppManager: ObservableObject {
    var flow: AppFlows = .splash
    var them: AppTheme = .default

    func checkAuthentication() {
        if flow == .notAuthenticated {
            flow = .authenticated
        } else {
            flow = .notAuthenticated
        }
    }

    func logout() {
        flow = .notAuthenticated
    }
    
    func updateTheme(_ them: AppTheme) {
        self.them = them
    }
}
