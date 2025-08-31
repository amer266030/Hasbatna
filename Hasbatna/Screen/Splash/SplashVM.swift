//
//  SplashVM.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import Foundation
import Observation

@Observable
class SplashVM {
    private let x = DIContainer.shared
    
    @MainActor
    func navigateToLanding() {
        Task {
            try await Task.sleep(for: .seconds(2))
            x.navMgr.push(.landing)
        }
    }
}

