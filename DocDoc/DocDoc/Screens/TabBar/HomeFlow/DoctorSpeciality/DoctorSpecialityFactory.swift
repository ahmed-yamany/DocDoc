//
// DoctorSpecialityFactory.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

struct DoctorSpecialityFactory {
    typealias ViewType = DoctorSpecialityView
    
    static func view(_ coordinator: DoctorSpecialityCoordinator) -> ViewType {
        DoctorSpecialityView(coordinator: coordinator)
    }
    
    static func preview() -> some View {
        view(HomeFlow())
    }
}
