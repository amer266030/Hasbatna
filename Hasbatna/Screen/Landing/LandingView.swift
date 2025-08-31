//
//  LandingView.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

struct LandingView: View {
    @Bindable var vm = LandingVM()
    
    var body: some View {
        ScreenContainer {
            Text("Title")
            Spacer()
            Image("circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            
            PrimaryButton(title: "New") {
                vm.startGame()
            }
        }
    }
}

#Preview {
    LandingView()
}
