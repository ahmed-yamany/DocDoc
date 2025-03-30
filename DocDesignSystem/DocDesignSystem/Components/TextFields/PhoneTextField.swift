//
//  PhoneTextField.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 01/03/2025.
//

import SwiftUI
import Utilities

public struct Country: Identifiable {
    public var id = UUID()

    public let icon: Image
    public let name: String
    public let code: String

    public init(id: UUID = UUID(), icon: Image, name: String, code: String) {
        self.id = id
        self.icon = icon
        self.name = name
        self.code = code
    }
}

public struct PhoneTextField: View {
    let countries: [Country]
    @Binding var selectedCountry: Country
    @Binding var phoneNumber: PhoneNumber

    @State private var showCountryPicker: Bool = false
    @State private var text: String = ""

    public init(
        countries: [Country],
        selectedCountry: Binding<Country>,
        phoneNumber: Binding<PhoneNumber>
    ) {
        self.countries = countries
        _phoneNumber = phoneNumber
        _selectedCountry = selectedCountry
        _text = State(wrappedValue: phoneNumber.wrappedValue.value)
    }

    public var body: some View {
        PrimaryTextField(
            text: $text,
            placeHolder: L10n.Localizable.yourNumber,
            leading: { leadingView }
        )
        .onChange(of: text) { newValue in
            phoneNumber = PhoneNumber(value: newValue, code: selectedCountry.code)
        }
        .sheet(isPresented: $showCountryPicker) {
            VStack {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .padding()
            .presentationFlixibleHeight()
        }
    }

    private var leadingView: some View {
        Button {
            showCountryPicker.toggle()
        } label: {
            HStack {
                DesignSystem.Tokens.Icons.downChevron

                Divider()
                    .padding(.vertical, 16)
            }
        }
        .animation(.default, value: showCountryPicker)
    }
}

@available(iOS 17.0, *)
#Preview {
    @Previewable @State var text: PhoneNumber = ""
    @Previewable @State var country: Country = .init(icon: Image(.alert), name: "Egypt", code: "20")
    let countries: [Country] = [
    ]

    PhoneTextField(
        countries: countries,
        selectedCountry: $country,
        phoneNumber: $text
    )
}
