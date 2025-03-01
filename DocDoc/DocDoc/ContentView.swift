//
//  ContentView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/02/2025.
//

import SwiftUI
import DocDesignSystem

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            EmailTextField(text: $email)
            
            PasswordTextField(text: $password)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
