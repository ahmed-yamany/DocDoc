//
//  RoutableNavigationController.swift
//  Coordinator
//
//  Created by Ahmed Yamany on 31/12/2024.
//

import SwiftUI

public struct RoutableNavigationController: View {
    @ObservedObject private var router: NavigationControllerRouter

    public init(router: NavigationControllerRouter) {
        _router = ObservedObject(wrappedValue: router)
    }

    public var body: some View {
        RepresentableViewController(viewController: router.navigationController)
            .ignoresSafeArea()
            .fullScreenCover(item: $router.fullScreenCoverView) { $0 }
            .sheet(item: $router.sheetView) { $0 }
    }

    public func setNavigationBarHidden(_ hidden: Bool, animated: Bool) {
        router.navigationController.setNavigationBarHidden(hidden, animated: animated)
    }

    public func setBackButtonImage(_ image: UIImage?) {
        router.navigationController.navigationBar.backIndicatorImage = image
        router.navigationController.navigationBar.backIndicatorTransitionMaskImage = image
    }
}

private struct RepresentableViewController: UIViewControllerRepresentable {
    let viewController: UIViewController

    func makeUIViewController(context: Context) -> UIViewController {
        viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
}
