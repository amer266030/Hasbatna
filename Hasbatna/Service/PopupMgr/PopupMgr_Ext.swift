//
//  PopupMgr_Ext.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

extension PopupMgr {
    @MainActor
    func showAppAlert(for alert: AppAlert, primaryActionOnDismiss: Bool = false) {
        showAppAlert(
            iconName: alert.iconName,
            iconColor: alert.iconColor,
            title: alert.title,
            msg: alert.message,
            secondaryBtnTitle: alert.secondaryBtnTitle,
            secondaryBtnAction: alert.secondaryBtnAction,
            primaryBtnTitle: alert.primaryBtnTitle,
            primaryBtnAction: alert.primaryBtnAction,
            primaryActionOnDismiss: primaryActionOnDismiss
        )
    }
    
    @MainActor
    private func showAppAlert(
        iconName: String = "info.circle",
        iconColor: Color = .red,
        title: LocalizedStringKey = "Error",
        msg: LocalizedStringKey,
        secondaryBtnTitle: LocalizedStringKey? = nil,
        secondaryBtnAction: (() -> Void)? = nil,
        primaryBtnTitle: LocalizedStringKey? = "Continue",
        primaryBtnAction: (() -> Void)? = nil,
        canDismissAlert: Bool = true,
        primaryActionOnDismiss: Bool = false
    ) {
        isLoading = false
        alertIconName = iconName
        alertIconColor = iconColor
        alertTitle = title
        alertMsg = msg
        alertSecondaryBtnTitle = secondaryBtnTitle
        alertSecondaryBtnAction = secondaryBtnAction
        alertPrimaryBtnTitle = primaryBtnTitle
        alertPrimaryBtnAction = primaryBtnAction
        isAlertVisible = true
        alertActionOnDismiss = primaryActionOnDismiss
    }
    
    @MainActor
    func dismissAppAlert() {
        alertIconName = "info.circle"
        alertIconColor = .red
        alertTitle = ""
        alertMsg = ""
        alertSecondaryBtnTitle = nil
        alertSecondaryBtnAction = nil
        alertPrimaryBtnTitle = nil
        alertPrimaryBtnAction = nil
        isAlertVisible = false
        alertActionOnDismiss = false
    }
}
