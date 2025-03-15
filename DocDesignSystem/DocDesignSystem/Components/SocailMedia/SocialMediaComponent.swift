//
//  SocialMediaComponent.swift
//  DocDesignSystem
//
//  Created by Mahmoud Elkady on 11/03/2025.
//

import SwiftUI

public struct SocialMediaView: View {
    
    private let actionGoogle: ()-> Void
    private let actionFaceBook: ()-> Void
    private let actionApple: () -> Void
    
    public init(actionGoogle: @escaping () -> Void, actionFaceBook: @escaping () -> Void, actionApple: @escaping () -> Void) {
        self.actionGoogle = actionGoogle
        self.actionFaceBook = actionFaceBook
        self.actionApple = actionApple
    }
    
    public var body: some View {
        HStack(spacing: 32) {
            googleAction
            faceBookAction
            appleAction
        }
    }
    
 
}

#Preview {
    SocialMediaView(actionGoogle: {}, actionFaceBook: {}, actionApple: {})
}

extension SocialMediaView {
    private var googleAction: some View {
        PrimaryIconButton(iconImage: Image(.googleIcon), action: {
            actionGoogle()
        })
    }
    
    private var faceBookAction: some View {
        PrimaryIconButton(iconImage: Image(.facebookIcon)) {
            actionFaceBook()
        }
    }
    
    private var appleAction: some View {
        PrimaryIconButton(iconImage: Image(.appleIcon)) {
            actionApple()
        }
    }
}
