//
//  SigninView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/02/2025.
//

import SwiftUI
import DocDesignSystem

struct SigninView<ViewModel: SiginViewModel>: View {
    let coordinator: SigninCoordinator
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        VStack {
            EmailTextField(text: $viewModel.email)
            PasswordTextField(text: $viewModel.password)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(.white)
    }
}

#Preview {
    SigninFactory.preview()
}
