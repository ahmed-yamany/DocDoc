//
//  PrimaryIconButton.swift
//  DocDesignSystem
//
//  Created by Mahmoud Elkady on 11/03/2025.
//

import SwiftUI

public struct PrimaryIconButton: View {
    
    private let size: CGFloat
    private let action: () -> Void
    private let iconImage: Image
    private let backgroundColor: Color
    private let cornerRadius: CGFloat
    
    init(iconImage: Image, backgroundColor: Color = DesignSystem.Tokens.Colors.primaryButtonForgroundColor,
         size: CGFloat = 46, action: @escaping () -> Void,
         cornerRadius: CGFloat = 23) {
        
        self.iconImage = iconImage
        self.backgroundColor = backgroundColor
        self.size = size
        self.action = action
        self.cornerRadius = cornerRadius
    }
    
    public var body: some View {
        Button(action: action) {
            iconImage
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: size * 0.6,height: size * 0.6)
        }
        .frame(width: size,height: size)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
      
    }
}

//#Preview {
//
//}
