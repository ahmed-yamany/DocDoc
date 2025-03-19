//
//  DoctorRecommendationView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

struct DoctorRecommendationView: View {
    let coordinator: DoctorRecommendationCoordinator
    
    var body: some View {
        ScrollView {
            VStack {
                Text("DoctorRecommendation View")
            }
        }
    }
}

#Preview {
    DoctorRecommendationFactory.preview()
}
