//
//  TabBarFlow.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import Coordinator
import SwiftUI

struct TabBarFlow: View {
    @StateObject private var tabbarManager = TabBarFlowManager()

    var body: some View {
        TabView(selection: $tabbarManager.selectedItem) {
            ForEach(tabbarManager.items) { tabbarItem in
                tabbarItem
                    .tabItem({
                        VStack {
                            Image(systemName: "house")
                            Text(tabbarItem.title)
                        }
                    })
                    .tag(tabbarItem)
            }
            .toolbar(tabbarManager.tabBarIsHidden ? .hidden : .visible, for: .tabBar)
        }
        .animation(.default, value: tabbarManager.tabBarIsHidden)
        .environmentObject(tabbarManager)
    }
}

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
