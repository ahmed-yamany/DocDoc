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
    }
}
