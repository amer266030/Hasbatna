//
//  LandingView.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ScreenContainer {
            Text("Title")
            Spacer()
            Image("circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            
            Button {
                
            } label: {
                Text("New")
            }
        }
    }
}

#Preview {
    LandingView()
}
