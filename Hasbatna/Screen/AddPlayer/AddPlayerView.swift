//
//  AddPlayerView.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

struct AddPlayerView: View {
    @Bindable var vm = AddPlayerVM()
    
    var body: some View {
        ScreenContainer {
            HStack(alignment: .firstTextBaseline, spacing: 16) {
                TeamColumnView(team: $vm.team1) {
                    
                }
                TeamColumnView(team: $vm.team2) {
                    
                }
            }
            
            SecondaryBtn(title: "Randomize Teams") {
                vm.randomizeTeams()
            }
            
            PrimaryButton(title: "Begin") {
                vm.startGame()
            }
        }
    }
}

#Preview {
    AddPlayerView()
}
