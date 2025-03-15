//
//  PhoneTextField.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 01/03/2025.
//

import SwiftUI

struct Country: Identifiable {
    var id = UUID()

    let icon: Image
    let name: String
    let code: String
}

public struct PhoneTextField: View {
    let countries: [Country]
    @Binding var selectedCountry: Country
    @Binding var text: String

    @State private var showCountryPicker: Bool = false
    @State private var height: CGFloat = 0.3

    init(countries: [Country], selectedCountry: Binding<Country>, text: Binding<String>) {
        self.countries = countries
        _text = text
        _selectedCountry = selectedCountry
    }

    public var body: some View {
        PrimaryTextField(
            text: $text,
            placeHolder: L10n.Localizable.yourNumber,
            leading: { leadingView }
        )
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
    }
}

@available(iOS 17.0, *)
#Preview {
    @Previewable @State var text = ""
    @Previewable @State var country: Country = .init(icon: Image(.alert), name: "Egypt", code: "20")
    let countries: [Country] = [
    ]

    PhoneTextField(
        countries: countries,
        selectedCountry: $country,
        text: $text
    )

}
