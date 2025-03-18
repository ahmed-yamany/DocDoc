//
//  TabBarFlow.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import Coordinator
import SwiftUI

struct TabBarFlow: View {
    @StateObject private var router = NavigationStackRouter()
    @StateObject private var tabbarManager = TabBarFlowManager()

    var body: some View {
        RoutableNavigationStack(router: router)
            .toolbar(.visible, for: .navigationBar)
            .environmentObject(tabbarManager)
            .environmentObject(router)
            .onAppear {
                router.setView(AnyHashableView(TabBarView()), animated: true, completion: nil)
            }
    }
}
