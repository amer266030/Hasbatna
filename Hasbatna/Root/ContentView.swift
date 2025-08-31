//
//  ContentView.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

struct ContentView: View {
    @Bindable var popupMgr = PopupMgr.shared
    
    var body: some View {
        Group {
            ZStack {
                NavCoordinator()
                    .allowsHitTesting(popupMgr.isPopupVisible ? false : true)
                    .overlay {
                        Color.bk.opacity(popupMgr.isPopupVisible ? 0.5 : 0)
                            .ignoresSafeArea()
                    }
                    .blur(radius: popupMgr.isPopupVisible ? 4 : 0)
                
                if popupMgr.isLoading {
                    LoadingView(msg: $popupMgr.loadingMsg)
                } else if popupMgr.isAlertVisible {
                    AlertView()
                }
            }
        }
        .languageModifier()
        .themeModifier()
    }
}

#Preview {
    ContentView()
}
