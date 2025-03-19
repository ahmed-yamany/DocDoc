//
//  HomeCoordinator.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import Foundation

protocol HomeCoordinator {
    func navigateToNotifications()
    func navigateToFindNearbyDoctors()
    func navigateToDoctorSpeciality()
    func navigateToDoctorRecommendation()
    func logout()
    
}

extension HomeFlow: HomeCoordinator {}
