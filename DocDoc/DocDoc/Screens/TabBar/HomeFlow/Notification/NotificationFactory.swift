//
//  NotificationFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

struct NotificationFactory {
    typealias ViewType = NotificationView
    
    static func view(_ coordinator: NotificationCoordinator) -> ViewType {
        NotificationView()
    }
    
    static func preview() -> some View {
        view(HomeFlow())
    }
}
