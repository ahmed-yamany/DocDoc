//
//  OnboardingCoordinator.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 08/03/2025.
//

import SwiftUI
import Coordinator

protocol OnboardingCoordinatorInterface {
    func navigateToLogin()
}

struct OnboardingCoordinator: OnboardingCoordinatorInterface, Coordinator {
    
    var router: Router
    
    
    init(router: Router) {
        self.router = router
    }
    
    func start() {
        router.setView(AnyHashableView(OnboardingView()), animated: true, completion: nil)
    }
    
    func navigateToLogin() {
        
    }
}


