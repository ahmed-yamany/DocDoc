//
//  View+presentationFlixibleHeight.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 15/03/2025.
//

import SwiftUI

private struct SheetPresentatinFlixibleContentHeight: ViewModifier {
    @State private var height: CGFloat = 0.0
    @State private var showInScrollView: Bool = false

    func body(content: Content) -> some View {
        Group {
            if showInScrollView {
                ScrollView {
                    content
                }
            } else {
                content
                    .background {
                        GeometryReader { proxy in
                            Color.clear
                                .onAppear {
                                    if proxy.size.height > UIScreen.main.bounds.height * 0.75 {
                                        showInScrollView = true
                                    } else {
                                        height = proxy.size.height
                                    }
                                }
                        }
                    }
                    .presentationDetents([.height(height)])
            }
        }
    }
}

public extension View {
    func presentationFlixibleHeight() -> some View {
        modifier(SheetPresentatinFlixibleContentHeight())
    }
}
