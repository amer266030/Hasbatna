//
//  LandingVM.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import Foundation
import Observation

@Observable
class LandingVM {
    private let x = DIContainer.shared
    
    @MainActor
    func startGame() {
        x.navMgr.push(.game)
    }   
}
