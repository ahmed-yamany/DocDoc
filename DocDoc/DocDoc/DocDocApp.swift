//
//  DocDocApp.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/02/2025.
//

import SwiftUI
import DocDesignSystem

@main
struct DocDocApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modifier(LanguageModifier())
                .onAppear {
                    repeate()
                }
        }
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
