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

                Button("Navigate to Find nearby doctors") {
                    coordinator.navigateToFindNearbyDoctors()
                }

                Button("Navigate to Doctor Specialties") {
                    coordinator.navigateToDoctorSpeciality()
                }

                ForEach(0 ..< 100) { _ in
                    Text("Item")
                }
            }
            .frame(maxWidth: .infinity)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "bell")
                    .onTapGesture {
                        coordinator.navigateToNotifications()
                    }
            }

            ToolbarItem(placement: .topBarTrailing) {
                Button("logout") {
                    coordinator.logout()
                }
            }
        }
        .setTabBarVisibility(.visible)
    }
}

#Preview {
    HomeFactory.preview()
}
