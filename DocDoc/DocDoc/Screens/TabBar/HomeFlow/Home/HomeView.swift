//
//  HomeView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

struct HomeView: View {
    let coordinator: HomeCoordinator
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Home View")
                
                Button("Navigate to notifications") {
                    coordinator.navigateToNotifications()
                }
                
                Button("Navigate to Find nearby doctors") {
                    coordinator.navigateToFindNearbyDoctors()
                }
                
                Button("Navigate to Doctor Specialties") {
                    coordinator.navigateToDoctorSpeciality()
                }
            }
        }
    }
}

#Preview {
    HomeFactory.preview()
}
