//
//  LogoView.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 29/03/2025.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            DesignSystem.Tokens.Assets.logo
            
            Text("Docdoc")
                .font(.caption1, weight: .bold)
        }
        .environment(\.locale, Language.english.local)
        .environment(\.layoutDirection, Language.english.layoutDirection)
    }
}

#Preview {
    LogoView()
}
