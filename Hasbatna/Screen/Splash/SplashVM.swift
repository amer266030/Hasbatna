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
    func startNewGame() {
        x.navMgr.push(.game)
    }
    
}

