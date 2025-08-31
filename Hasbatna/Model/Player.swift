//
//  Player.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import Foundation
import SwiftData

@Model
class Player: Hashable {
    var name: String
    var totalPlayed: Int
    var win: Int
    var loose: Int
    var avatarReference: String
    
    init(name: String, totalPlayed: Int, win: Int, loose: Int, avatarReference: String = "") {
        self.name = name
        self.totalPlayed = totalPlayed
        self.win = win
        self.loose = loose
        self.avatarReference = avatarReference
    }
}
