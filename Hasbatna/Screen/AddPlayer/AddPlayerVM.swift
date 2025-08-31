//
//  AddPlayerVM.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import Foundation
import Observation

@Observable
class AddPlayerVM {
    private let x = DIContainer.shared
    
    var team1 = Team(name: "")
    var team2 = Team(name: "")
    
    var teams: [Team] { [team1, team2] }
    
    @MainActor
    func addPlayer(in team: Team) {
        
    }
    
    func randomizeTeams() {
        
    }
    
    @MainActor
    func startGame() {
        x.popupMgr.showLoading()
        defer { x.popupMgr.dismissLoading() }
        
        do {
            // Validations
            for team in teams {
                guard !team.name.isEmpty else { throw TeamError.noName }
                guard !team.players.isEmpty else { throw TeamError.noPlayers }
                guard team.players.count == 2 else { throw TeamError.missingPlayers }
            }
             
            // Navigate
            navigateToGame()
        } catch {
            x.popupMgr.showAppAlert(for: GeneralAlert.unexpected(error: error))
        }
    }
    
    @MainActor
    private func navigateToGame() {
        x.navMgr.push(.game(team1: team1, team2: team2))
    }
}
