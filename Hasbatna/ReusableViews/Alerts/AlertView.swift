//
//  AlertView.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

struct AlertView: View {
    @Bindable var popupMgr = PopupMgr.shared
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(systemName: "info.square")
                        .foregroundStyle(popupMgr.alertIconColor)
                    
                    Text(popupMgr.alertTitle)
                        .foregroundStyle(.bk)
                        .fontWeight(.medium)
                    Spacer()
                    
                }
                .font(.caption)
                .padding(.vertical)
                
                Text(popupMgr.alertMsg)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .lineLimit(6)
                    .minimumScaleFactor(0.5)
            }
            
            HStack {
                if let secondaryTitle = popupMgr.alertSecondaryBtnTitle {
                    SecondaryBtn(
                        title: secondaryTitle) {
                            if let action = popupMgr.alertSecondaryBtnAction {
                                action()
                            }
//                            if popupMgr.alertCanBeDismissed { popupMgr.dismissAppAlert() }
                        }
                }
                
                PrimaryButton(
                    title: popupMgr.alertPrimaryBtnTitle ?? "OK") {
                        if let action = popupMgr.alertPrimaryBtnAction {
                            action()
                        }
//                        if popupMgr.alertCanBeDismissed { popupMgr.dismissAppAlert() }
                    }
            }
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 32)
        .background(Color.ol.gradient, in: .rect(cornerRadius: 24))
        .padding(.horizontal, 32)
    }
}
