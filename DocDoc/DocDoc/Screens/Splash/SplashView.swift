//
//  SplashView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import DocDesignSystem
import SwiftUI

struct SplashView: View {
    @EnvironmentObject private var appManager: AppManager
    @Environment(\.theme) private var theme

    var body: some View {
        GeometryReader { proxy in
            VStack {
                DesignSystem.Tokens.Assets.logo
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: proxy.size.width + 60, height: proxy.size.height / 2)
                    .foregroundStyle(theme.colors.primary.opacity(0.05))
            }
            .frame(maxHeight: .infinity, alignment: .center)
        }
        .padding(.horizontal, -60)
        .setupScreenDesign()
        .task {
            try? await Task.sleep(for: .seconds(2))
//            appManager.checkAuthentication()
        }
    }
}
