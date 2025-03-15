//
//  SocialMediaItem.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 15/03/2025.
//
import SwiftUI

public struct SocialMediaItem: Identifiable {
    public var id = UUID()

    var icon: Image
    var action: () -> Void
}

public extension SocialMediaItem {
    static func google(_ action: @escaping () -> Void) -> SocialMediaItem {
        .init(icon: Image(.googleIcon), action: action)
    }

    static func facebook(_ action: @escaping () -> Void) -> SocialMediaItem {
        .init(icon: Image(.facebookIcon), action: action)
    }

    static func apple(_ action: @escaping () -> Void) -> SocialMediaItem {
        .init(icon: Image(.appleIcon), action: action)
    }
}
