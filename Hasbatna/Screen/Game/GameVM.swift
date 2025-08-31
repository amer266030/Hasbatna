//
//  GameVM.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import Foundation
import Observation

@Observable
class GameVM {
    private let x = DIContainer.shared
    
    
    func addScore() {
        
    }
    
    func gameEneded() {
        
    }
    
    
    @MainActor
    func dismiss() {
        x.navMgr.pop()
    }
}
