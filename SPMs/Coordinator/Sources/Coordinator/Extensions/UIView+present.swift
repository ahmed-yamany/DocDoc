//
//  UI.swift
//  Coordinator
//
//  Created by Ahmed Yamany on 28/03/2025.
//

import SwiftUI

internal extension UIView {
    static func present(
        _ view: AnyHashableView,
        animated: Bool,
        style: PresentationStyle,
        fullScreenCoverView: inout AnyHashableView?,
        sheetView: inout AnyHashableView?,
        completion: (() -> Void)?
    ) {
        func fullScreen() {
            fullScreenCoverView = view
            sheetView = nil
        }

        func overFullScreen() {
            if #available(iOS 16.4, *) {
                fullScreenCoverView = AnyHashableView(view.presentationBackground(.clear), type: view.type)
            } else {
                fullScreenCoverView = AnyHashableView(view.transparentBackground(), type: view.type)
            }
            sheetView = nil
        }

        func sheet() {
            sheetView = view
            fullScreenCoverView = nil
        }

        UIView.performTransitionWithCompletion(animated: animated, action: {
            switch style {
            case .sheet:
                sheet()
            case .fullScreen:
                fullScreen()
            case .overFullScreen:
                overFullScreen()
            }
        }, completion: completion)
    }
}
