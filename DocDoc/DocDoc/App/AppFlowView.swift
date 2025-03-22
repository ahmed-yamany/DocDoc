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
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
            case .notAuthenticated:
                AuthenticatinFlow()
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
            case .authenticated:
                TabBarFlow()
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
            }
        }
        .configureLocalization()
        .environmentObject(appManager)
        .animation(.easeInOut(duration: 0.7), value: appManager.flow)
    }
}
