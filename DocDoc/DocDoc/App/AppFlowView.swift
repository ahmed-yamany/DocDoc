//
//  AppFlowView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/03/2025.
//

import DocDesignSystem
import SwiftUI

struct AppFlowView: View {
    @StateObject var app = AppConfigurator()

    var body: some View {
        Group {
            switch app.flow {
            case .splash:
                Text("Splash")
                    .task {
                        try? await Task.sleep(for: .seconds(2))
                        app.checkAuthentication()
                    }
            case .onboarding:
                OnboardingFlow()
            case .authenticated:
                Text("Auth")
            }
        }
        .configureLocalization()
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
