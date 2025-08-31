//
//  GameView.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

struct GameView: View {
    @Bindable var vm = GameVM()
    
    var body: some View {
        ScreenContainer {
            List {
                Section("Team") {
                    HStack {
                        
                    }
                }
                
                Section("Score") {
                    
                }
            }
        }
    }
}

#Preview {
    GameView()
}
