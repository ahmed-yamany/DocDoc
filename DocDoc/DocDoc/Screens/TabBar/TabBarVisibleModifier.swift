//
//  TabBarVisibleModifier.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 30/03/2025.
//

import SwiftUI

struct TabBarVisibleModifier: ViewModifier {
    @EnvironmentObject var tabbarManager: TabBarFlowManager

    func body(content: Content) -> some View {
        content
            .lifecycle(onDidAppear: {
                tabbarManager.showTabBar()
            })
    }
}

struct TabBarHideModifier: ViewModifier {
    @EnvironmentObject var tabbarManager: TabBarFlowManager

    func body(content: Content) -> some View {
        content
            .lifecycle(onWillAppear: {
                tabbarManager.hideTabBar()
            })
    }
}

extension View {
    func setTabBarVisible() -> some View {
        modifier(TabBarVisibleModifier())
    }

    func setTabBarHidden() -> some View {
        modifier(TabBarHideModifier())
    }
}
