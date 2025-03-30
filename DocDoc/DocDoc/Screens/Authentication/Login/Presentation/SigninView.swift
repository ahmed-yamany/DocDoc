//
//  SigninView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/02/2025.
//

import DocDesignSystem
import SwiftUI

public struct SigninView<ViewModel: SiginViewModel>: View {
    @ObservedObject var viewModel: ViewModel

    init(viewModel: ViewModel) {
        _viewModel = ObservedObject(wrappedValue: viewModel)
    }

    public var body: some View {
        ScrollView {
            VStack(spacing: DesignSystem.Foundations.Measurements.Spacing.xLarge) {
                AuthenticationHeaderView(
                    title: L10n.Authentication.Login.Header.title,
                    subTitle: L10n.Authentication.Login.Header.subtitle
                )
                
                VStack(spacing: DesignSystem.Foundations.Measurements.Spacing.medium) {
                    EmailTextField(email: $viewModel.email)
                    
                    PasswordTextField(password: $viewModel.password)
                    
                    PhoneTextField(
                        countries: [],
                        selectedCountry: $viewModel.country,
                        phoneNumber: $viewModel.phoneNumber
                    )
                    
                    HStack {
                        Button {
                            
                        } label: {
                            
                        }
                        .buttonStyle(.borderless)
                    }
                    
                    Button {
                        viewModel.didTapLogin()
                    } label: {
                        Text(L10n.Localizable.login)
                    }
                    .buttonStyle(.primary)
                }
                
                SocialMediaView(items: [.google({}), .facebook({}), .apple({})])
                
            }
            .setupScreenDesign()
        }
    }
}

#Preview {
    SigninFactory.preview()
}


