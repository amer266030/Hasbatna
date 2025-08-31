//
//  ScreenContainer.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

struct ScreenContainer<Content: View>: View {
    private let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(.bk.gradient)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 24) {
                content
            }
            .padding(24)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        NavMgr.shared.push(.settings)
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
        }
    }
}

#Preview {
    ScreenContainer {
        
    }
}
