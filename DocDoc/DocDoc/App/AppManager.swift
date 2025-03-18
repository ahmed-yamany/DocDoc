//
//  AppManager.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/03/2025.
//w
import SwiftUI

final class AppManager: ObservableObject {
    @Published var flow: AppFlows = .splash

    func checkAuthentication() {
        if flow == .notAuthenticated {
            flow = .authenticated
        } else {
            flow = .notAuthenticated
        }
    }
}
