//
//  AppointmentFlow.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

struct AppointmentFlow: View {
    @EnvironmentObject var tabbarManager: TabBarFlowManager
    var body: some View {
        VStack {
            Text("AppointmentFlow")
            
            Button("navigate to home") {
                tabbarManager.selectedItem = .home
            }
        }
    }
}

#Preview {
    AppointmentFlow()
}
