//
//  HomeFlow.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import Coordinator
import SwiftUI

struct HomeFlow: View {
    @StateObject private var router = NavigationStackRouter()
    @EnvironmentObject private var appManager: AppManager

    var body: some View {
        RoutableNavigationStack(router: router)
            .onAppear { // will be update to did load
                setRoot()
            }
    }

    private func setRoot() {
        let view = HomeFactory.view(self)
        router.setView(AnyHashableView(view), animated: false, completion: nil)
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

    func navigateToDoctorRecommendation() {
        let view = DoctorRecommendationFactory.view(self)
        router.push(AnyHashableView(view), animated: true, completion: nil)
    }

    func logout() {
        appManager.logout()
    }
}
