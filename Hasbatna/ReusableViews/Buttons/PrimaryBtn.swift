//
//  PrimaryBtn.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

struct PrimaryButton: View {
    @State private var animate: Bool = true
    
    var title: LocalizedStringKey
    var animation: Animation = .easeOut(duration: 0.1)
    var isEnabled: Bool = true
    var action: () -> Void
    
    var body: some View {
        Button {
            if isEnabled { withAnimation(animation) { action() } }
        } label: {
            HStack {
                HStack {
                    Text(title)
                        .lineLimit(1)
                        .minimumScaleFactor(0.7)
                }
                .padding()
                .padding(.horizontal, 8)
            }
            .opacity(animate ? 1 : 0)
            .foregroundStyle(isEnabled ? .white : .gray)
            .background {
                ZStack {
                    RoundedRectangle(cornerRadius: .infinity)
                        .fill(
                            isEnabled ?
                                Color.gr.gradient
                                .shadow(.drop(radius: 1))
                                .shadow(.inner(radius: 1))
                            : Color.gray.gradient
                                .shadow(.drop(radius: 1))
                                .shadow(.inner(radius: 1))
                        )
                    RoundedRectangle(cornerRadius: .infinity)
                        .stroke(.br, lineWidth: 1)
                }
            }
//            .scaleEffect(animate ? 1 : 0.5)
//            .animation(.bouncy(duration: 0.8, extraBounce: 0.3), value: animate)
//            .onAppear { animate = true }
        }
        .preferredColorScheme(.light)
    }
}
