//
//  AppRoute.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import Foundation

enum AppRoute: Hashable {
    case splash
    case settings
    case landing
    case addPlayers
    case game(team1: Team, team2: Team)
}
