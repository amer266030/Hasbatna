//
//  Game.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import Foundation
import SwiftData

@Model
final class Game {
    var team1: Team
    var team2: Team
    
    init(team1: Team, team2: Team) {
        self.team1 = team1
        self.team2 = team2
    }
}
