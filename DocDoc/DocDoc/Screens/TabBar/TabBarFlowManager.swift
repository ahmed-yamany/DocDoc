//
//  TabBarFlowManager.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

final class TabBarFlowManager: ObservableObject {
    @Published var selectedItem: TabBarItem = .home
    @Published var tabBarIsHidden: Bool = false
    @Published var items: [TabBarItem] = [.home, .inbox, .search, .appoinments, .profile]
}
