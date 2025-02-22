//
//  ContentView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/02/2025.
//

import SwiftUI
import DocDesignSystem

struct ContentView: View {
    var body: some View {
        VStack {
            DesignSystem.Tokens.Icons.alert
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(L10n.hello)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
