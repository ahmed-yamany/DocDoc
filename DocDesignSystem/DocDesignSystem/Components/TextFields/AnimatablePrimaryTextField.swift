//
//  AnimatablePrimaryTextField.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 28/03/2025.
//
import SwiftUI

import Utilities

public struct AnimatablePrimaryTextField<Leading: View, Trailing: View>: View {
    @Binding var text: String

    let placeHolder: String
    let isSecured: Bool

    @ViewBuilder var leading: Leading
    @ViewBuilder var trailing: Trailing
    @Environment(\.primaryTextFieldState) private var state: PrimaryTextFieldState
    @State private var shakeAnimate: Bool = false

    public init(
        text: Binding<String>,
        placeHolder: String,
        isSecured: Bool = false,
        state: PrimaryTextFieldState = .normal,
        @ViewBuilder leading: () -> Leading = { EmptyView() },
        @ViewBuilder trailing: () -> Trailing = { EmptyView() }
    ) {
        _text = text
        self.placeHolder = placeHolder
        self.isSecured = isSecured
        self.leading = leading()
        self.trailing = trailing()
    }

    public var body: some View {
        PrimaryTextField(text: $text, placeHolder: placeHolder, leading: { leading }, trailing: { trailing })
            .offset(x: shakeAnimate ? -5 : 0)
            .onChange(of: state) { newValue in
                switch newValue {
                case .error:
                    withAnimation(.easeInOut(duration: 0.08).repeatCount(3)) {
                        shakeAnimate = true
                    }
                default: shakeAnimate = false
                }
            }
    }
}

//
//public struct TypeDrivenrimaryTextField<Leading: View, Trailing: View, TextType: StringConvertable>: View {
//    @Binding var text: TextType
//
//    let placeHolder: String
//    let isSecured: Bool
//    @ViewBuilder var leading: Leading
//    @ViewBuilder var trailing: Trailing
//    
//    @State private var fieldText: String
//
//    public init(
//        text: Binding<TextType>,
//        placeHolder: String,
//        isSecured: Bool = false,
//        state: PrimaryTextFieldState = .normal,
//        @ViewBuilder leading: () -> Leading = { EmptyView() },
//        @ViewBuilder trailing: () -> Trailing = { EmptyView() }
//    ) {
//        _text = text
//        _fieldText = State(wrappedValue: text.wrappedValue.description)
//        self.placeHolder = placeHolder
//        self.isSecured = isSecured
//        self.leading = leading()
//        self.trailing = trailing()
//    }
//
//    public var body: some View {
//        PrimaryTextField(text: $fieldText, placeHolder: placeHolder, leading: { leading }, trailing: { trailing })
//            .onChange(of: fieldText) { newValue in
//                text = TextType(newValue)
//            }
//    }
//}
//
//extension Email: CustomStringConvertible {
//    public var description: String {
//        get {
//            value
//        }
//        set {
//            value = newValue
//        }
//    }
//}
