//
//  DIContainer.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import Foundation

class DIContainer {
    static let shared = DIContainer()
    lazy var navMgr = NavMgr.shared
    
    
    private init() {}
    
}
