//
// DoctorSpecialityFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

struct DoctorRecommendationFactory {
    typealias ViewType = DoctorRecommendationView
    
    static func view(_ coordinator: DoctorRecommendationCoordinator) -> ViewType {
        DoctorRecommendationView(coordinator: coordinator)
    }
    
    static func preview() -> some View {
        view(HomeFlow())
    }
}
