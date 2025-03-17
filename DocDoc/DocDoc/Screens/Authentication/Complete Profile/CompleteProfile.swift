//
//  CompleteProfileView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 17/03/2025.
//

import SwiftUI

struct CompleteProfileView: View {
    let coordinator: CompleteProfileCoordinator
    
    var body: some View {
        VStack {
            Text("Complete profile view")
            
            Button("complete") {
                coordinator.navigateToOTPVerification()
            }
        }
    }
}

#Preview {
    CompleteProfileFactory.preview()
}
