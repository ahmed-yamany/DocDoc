//
//  OTPView.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//

import SwiftUI

public struct OTPView: View {
    let coordinator: OTPCoordinator
    
    public var body: some View {
        VStack {
            Text("OTPView")
            Button("Submit") {
                coordinator.navigateCheckAuthentication()
            }
        }
    }
}
