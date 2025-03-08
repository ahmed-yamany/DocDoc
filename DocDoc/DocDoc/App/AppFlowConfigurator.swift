//
//  AppFlowConfigurator.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/03/2025.
//
import SwiftUI

protocol AppFlowConfigurator: ObservableObject {
    var flow: AppFlows { get set }
    
    func checkAuthentication()
}

class AppConfigurator: AppFlowConfigurator {
    @Published var flow: AppFlows = .splash
    
    
    func checkAuthentication() {
        flow = .onboarding
    }
    
}
