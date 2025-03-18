//
//  TabBarView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//
import SwiftUI

struct TabBarView: View {
    @EnvironmentObject private var tabbarManager: TabBarFlowManager
    @EnvironmentObject private var router: NavigationStackRouter

    var body: some View {
        TabView(selection: $tabbarManager.selectedItem) {
            ForEach(tabbarManager.items) { tabbarItem in
                tabbarItem
                    .tabItem({
                        Text(tabbarItem.title)
                    })
                    .tag(tabbarItem)
            }
        }
        .navigationTitle(tabbarManager.selectedItem.title)
    }
}
