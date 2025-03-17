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
                Text("Splash")
                    .task {
                        try? await Task.sleep(for: .seconds(2))
                        appManager.checkAuthentication()
                    }
            case .notAuthenticated:
                AuthenticatinFlow()
            case .authenticated:
                Text("Auth")
            }
        }
        .configureLocalization()
        .environmentObject(appManager)
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
