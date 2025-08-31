//
//  NavCoordinator.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI
import Observation

struct NavCoordinator: View {
    @Bindable var navMgr = NavMgr.shared
    
    var body: some View {
        NavigationStack(path: $navMgr.path) {
            SplashView()
                .navigationDestination(for: AppRoute.self) { route in
                    destinationView(for: route)
                        .navigationBarBackButtonHidden()
                }
        }
    }
    
    @ViewBuilder
    func destinationView(for route: AppRoute) -> some View {
        switch route {
        case .splash: SplashView()
        case .landing: LandingView()
        case .addPlayers: AddPlayerView()
        case .game: GameView()
        case .settings: SettingsView()
        }
    }
}
