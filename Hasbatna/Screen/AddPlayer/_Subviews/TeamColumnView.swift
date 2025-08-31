//
//  TeamColumnView.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

struct TeamColumnView: View {
    @Binding var team: Team
    var action: () -> Void
    
    var body: some View {
        VStack {
            TextField("", text: $team.name)
            
            List(team.players) { player in
                HStack {
                    Image(systemName: "person")
                    Text(player.name)
                }
                .font(.footnote)
            }
            .scrollDisabled(true)
            
            Button {
                action()
            } label: {
                Label("Add Player", systemImage: "plus.circle")
            }
        }
    }
}

#Preview {
    TeamColumnView(team: .constant(Team(name: ""))) {
        
    }
}
