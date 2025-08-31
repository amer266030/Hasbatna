//
//  TeamError.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

enum TeamError: Error, Equatable  {
    case noName
    case noPlayers
    case missingPlayers
}

extension TeamError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .noName: "Team name cannot be empty"
        case .noPlayers: "No players added"
        case .missingPlayers: "A team must have two player"
        }
    }
    
    var localizedKey: LocalizedStringKey {
        switch self {
        case .noName: "Team name cannot be empty"
        case .noPlayers: "No players added"
        case .missingPlayers: "A team must have two player"
        }
    }
    
}
