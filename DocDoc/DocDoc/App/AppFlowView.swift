//
//  AppFlowView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/03/2025.
//

import DocDesignSystem
import SwiftUI

struct AppFlowView: View {
    @StateObject var appManager = AppManager()

    var body: some View {
        Group {
            switch appManager.flow {
            case .splash:
                SplashView()
            case .notAuthenticated:
                AuthenticatinFlow()
            case .authenticated:
                TabBarFlow()
            }
        }
        .configureLocalization()
        .environmentObject(appManager)
        .animation(.easeInOut(duration: 1), value: appManager.flow)
    }

    func repeate() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            if LocalizationSettings.shared.language == .english {
                LocalizationSettings.shared.language = .arabic
            } else {
                LocalizationSettings.shared.language = .english
            }

            repeate()
        }
    }
}
