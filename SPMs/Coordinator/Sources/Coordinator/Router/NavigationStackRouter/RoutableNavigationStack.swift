//
//  RoutableNavigationStack.swift
//  Coordinator
//
//  Created by Ahmed Yamany on 14/10/2024.
//

import SwiftUI

@available(iOS 16.0, *)
public struct RoutableNavigationStack: View {
    @ObservedObject private var router: NavigationStackRouter

    public init(router: NavigationStackRouter) {
        _router = ObservedObject(wrappedValue: router)
    }

    public var body: some View {
        NavigationStack(path: $router.navigationStack) {
            Group {
                router.rootView?
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
            }
            .toolbar(.visible, for: .navigationBar)
            .navigationDestination(for: AnyHashableView.self) {
                $0.toolbar(.visible, for: .navigationBar)
            }
        }
        .fullScreenCover(item: $router.fullScreenCoverView) { $0 }
        .sheet(item: $router.sheetView) { $0 }
    }
}
