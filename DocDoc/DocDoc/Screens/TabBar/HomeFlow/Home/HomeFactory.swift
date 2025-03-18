//
//  HomeFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

struct HomeFactory {
    typealias ViewType = HomeView
    
    static func view(_ coordinator: HomeCoordinator) -> ViewType {
        HomeView(coordinator: coordinator)
    }
    
    static func preview() -> some View {
        view(HomeFlow())
    }
}
