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
                        .offset(y: tabbarItem == tabbarManager.selectedItem ? -30 : 0)
                    })
                    .tag(tabbarItem)
            }
            .toolbar(tabbarManager.tabBarIsHidden ? .hidden : .visible, for: .tabBar)
        }
        .animation(.default, value: tabbarManager.tabBarIsHidden)
        .environmentObject(tabbarManager)
        .onPreferenceChange(HideTabBarPreferenceKey.self, perform: { hideTabbar in
            Task(priority: .high) {
                await hideTabbar ? tabbarManager.hideTabBar() : tabbarManager.showTabBar()
            }
        })
    }
}

struct HideTabBarPreferenceKey: PreferenceKey {
    static let defaultValue: Bool = false

    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

extension View {
    func setTabBarVisibility(_ visible: Visibility = .automatic) -> some View {
        preference(key: HideTabBarPreferenceKey.self, value: visible == .hidden ? true : false)
    }
}
