//
//  PopupMgr.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

@Observable
class PopupMgr: ObservableObject {
    static let shared = PopupMgr()
    
    var isLoading = false
    var isAlertVisible = false
    
    var isPopupVisible: Bool {
        isLoading || isAlertVisible
    }
    
    var loadingMsg: LocalizedStringKey = ""
    // Icons
    var alertIconName: String = "info.circle"
    var alertIconColor: Color = .red
    // Text
    var alertTitle: LocalizedStringKey = ""
    var alertMsg: LocalizedStringKey = ""
    // Buttons
    var alertPrimaryBtnTitle: LocalizedStringKey?
    var alertPrimaryBtnAction: (() -> Void)?
    var alertSecondaryBtnTitle: LocalizedStringKey?
    var alertSecondaryBtnAction: (() -> Void)?
    // Always Dismiss
    var alertActionOnDismiss: Bool = false
    
    private init() {}
    
    @MainActor
    func showLoading(_ msg: LocalizedStringKey = "Loading...") {
        loadingMsg = msg
        if !isLoading {
            isLoading = true
        }
    }
    
    @MainActor
    func dismissLoading() {
        isLoading = false
    }
    
}
