//
//  HomeFlow.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import Coordinator
import SwiftUI

struct HomeFlow: View {
    @EnvironmentObject private var router: NavigationStackRouter
    @EnvironmentObject private var tabbarManager: TabBarFlowManager

    var body: some View {
        HomeFactory.view(self)
    }

    func navigateToNotifications() {
        let view = NotificationFactory.view(self)
        router.push(AnyHashableView(view), animated: true, completion: nil)
    }

    func navigateToFindNearbyDoctors() {
        let view = FindNearbyFactory.view(self)
        router.push(AnyHashableView(view), animated: true, completion: nil)
    }

    func navigateToDoctorSpeciality() {
        let view = DoctorSpecialityFactory.view(self)
        router.push(AnyHashableView(view), animated: true, completion: nil)
    }
}
