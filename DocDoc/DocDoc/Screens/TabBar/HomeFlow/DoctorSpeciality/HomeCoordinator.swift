//
//  DoctorSpecialityCoordinator.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import Foundation

protocol DoctorSpecialityCoordinator {
    func navigateToNotifications()
    func navigateToFindNearbyDoctors()
}

extension HomeFlow: DoctorSpecialityCoordinator {}
