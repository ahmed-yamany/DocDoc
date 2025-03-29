//
//  AuthenticationHeaderView.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 29/03/2025.
//

import SwiftUI

public struct AuthenticationHeaderView: View {
    @Environment(\.theme) private var theme: AppTheme

    let title: String
    let subTitle: String

    public init(title: String, subTitle: String) {
        self.title = title
        self.subTitle = subTitle
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: DesignSystem.Foundations.Measurements.Spacing.xSmall) {
            Text(title)
                .font(.title3, weight: .bold)
                .foregroundStyle(theme.colors.primary)

            Text(subTitle)
                .font(.caption2, weight: .regular)
                .foregroundStyle(theme.colors.secondaryText)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    AuthenticationHeaderView(title: "", subTitle: "")
}
