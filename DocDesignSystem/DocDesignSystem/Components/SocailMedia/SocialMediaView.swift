//
//  SocialMediaView.swift
//  DocDesignSystem
//
//  Created by Mahmoud Elkady on 11/03/2025.
//

import SwiftUI

public struct SocialMediaView: View {
    let items: [SocialMediaItem]

    public init(items: [SocialMediaItem]) {
        self.items = items
    }

    public var body: some View {
        HStack(spacing: 32) {
            ForEach(items) { item in
                Button {
                    item.action()
                } label: {
                    SocialMediaLabel(icon: item.icon)
                }
            }
        }
    }
}

#Preview {
    SocialMediaView(items: [.google({}), .apple({}), .facebook({})])
}
