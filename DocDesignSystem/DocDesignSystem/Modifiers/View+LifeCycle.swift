//
//  View+LifeCycle.swift
//
//
//  Created by Ahmed Yamany on 28/07/2024.
//

import SwiftUI

public extension View {
    func lifecycle(
        onWillAppear: (() -> Void)? = nil,
        onDidAppear: (() -> Void)? = nil,
        onDidLoad: (() -> Void)? = nil,
        onWillDisappear: (() -> Void)? = nil,
        onDidDisappear: (() -> Void)? = nil,
        onIsAppearing: (() -> Void)? = nil
    ) -> some View {
        modifier(LifecycleModifier(
            onWillAppear: onWillAppear,
            onDidAppear: onDidAppear,
            onDidLoad: onDidLoad,
            onWillDisappear: onWillDisappear,
            onDidDisappear: onDidDisappear,
            onIsAppearing: onIsAppearing
        ))
    }
}

private struct LifecycleModifier: ViewModifier {
    var onWillAppear: (() -> Void)?
    var onDidAppear: (() -> Void)?
    var onDidLoad: (() -> Void)?
    var onWillDisappear: (() -> Void)?
    var onDidDisappear: (() -> Void)?
    var onIsAppearing: (() -> Void)?

    func body(content: Content) -> some View {
        content.background(
            LifecycleHandlerView(
                onWillAppear: onWillAppear,
                onDidAppear: onDidAppear,
                onDidLoad: onDidLoad,
                onWillDisappear: onWillDisappear,
                onDidDisappear: onDidDisappear,
                onIsAppearing: onIsAppearing
            )
        )
    }
}

private struct LifecycleHandlerView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIViewController

    var onWillAppear: (() -> Void)?
    var onDidAppear: (() -> Void)?
    var onDidLoad: (() -> Void)?
    var onWillDisappear: (() -> Void)?
    var onDidDisappear: (() -> Void)?
    var onIsAppearing: (() -> Void)?

    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> UIViewControllerType {
        let controller = LifecycleHandlerViewController()
        controller.onWillAppear = onWillAppear
        controller.onDidAppear = onDidAppear
        controller.onDidLoad = onDidLoad
        controller.onWillDisappear = onWillDisappear
        controller.onDidDisappear = onDidDisappear
        controller.onIsAppearing = onIsAppearing
        return controller
    }

    func updateUIViewController(
        _: UIViewControllerType,
        context _: UIViewControllerRepresentableContext<Self>
    ) { }
}

private class LifecycleHandlerViewController: UIViewController {
    var onWillAppear: (() -> Void)?
    var onDidAppear: (() -> Void)?
    var onDidLoad: (() -> Void)?
    var onWillDisappear: (() -> Void)?
    var onDidDisappear: (() -> Void)?
    var onIsAppearing: (() -> Void)?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        onWillAppear?()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        onDidAppear?()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        onDidLoad?()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        onWillDisappear?()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        onDidDisappear?()
    }

    override func viewIsAppearing(_ animated: Bool) {
        super.viewWillAppear(animated)
        onIsAppearing?()
    }
}
