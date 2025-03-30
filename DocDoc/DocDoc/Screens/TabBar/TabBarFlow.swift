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
