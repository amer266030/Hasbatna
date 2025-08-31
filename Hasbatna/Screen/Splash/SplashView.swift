//
//  SplashView.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ScreenContainer {
            Image("circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    SplashView()
}
