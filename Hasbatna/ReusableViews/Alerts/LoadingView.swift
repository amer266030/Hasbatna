//
//  LoadingView.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

struct LoadingView: View {
    @Binding var msg: LocalizedStringKey
    
    var body: some View {
        ProgressView(msg)
            .tint(.gr)
            .controlSize(.large)
            .padding(24)
            .background(.ol, in: .rect(cornerRadius: 16))
            .shadow(color: .bk, radius: 1)
            .padding(32)
    }
}
