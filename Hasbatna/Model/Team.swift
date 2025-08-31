//
//  Team.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import Foundation
import SwiftData

@Model
class Team {
    var name: String
    var players: [Player] = []
    
    init(name: String) {
        self.name = name
    }
}
