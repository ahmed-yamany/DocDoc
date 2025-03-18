//
//  SplashView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

struct SplashView: View {
    @EnvironmentObject private var appManager: AppManager

    var body: some View {
        Text("Splash")
            .task {
                try? await Task.sleep(for: .seconds(2))
                appManager.checkAuthentication()
            }
    }
}
