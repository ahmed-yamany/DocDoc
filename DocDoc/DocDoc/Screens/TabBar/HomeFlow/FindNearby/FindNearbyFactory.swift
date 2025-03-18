//
//  FindNearbyFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

struct FindNearbyFactory {
    typealias ViewType = FindNearbyView
    
    static func view(_ coordinator: FindNearbyCoordinator) -> ViewType {
        FindNearbyView()
    }
    
    static func preview() -> some View {
        view(HomeFlow())
    }
}
