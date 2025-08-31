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
    var team1Name: String = ""
    var team1Players: [Player] = []
    
    var team2 = Team(name: "")
    var team2Name: String = ""
    var team2Players: [Player] = []
    
    @MainActor
    func addPlayers(for team: Team) {
        x.popupMgr.showLoading()
        defer { x.popupMgr.dismissLoading() }
        
        do {
            // Validations
            guard !team1Name.isEmpty else { throw TeamError.noName }
            guard !team1Players.isEmpty else { throw TeamError.noPlayers }
            guard team1Players.count == 2 else { throw TeamError.missingPlayers }
            
            // Add Data
            team1.name = team1Name
            team1.players = team1Players
            
            team2.name = team2Name
            team2.players = team2Players
        } catch {
            x.popupMgr.showAppAlert(for: GeneralAlert.unexpected(error: error))
        }
    }
}
