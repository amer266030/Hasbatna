//
//  GeneralAlert.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import Foundation
import SwiftUI

enum GeneralAlert: AppAlert {
    case unexpected(error: Error)
    
    var iconName: String {
        switch self {
        default: return "info.circle"
        }
    }
    
    var iconColor: Color {
        switch self {
        default: .red
        }
    }
    
    var title: LocalizedStringKey {
        switch self {
        default:
            return "Error"
        }
    }
    
    var message: LocalizedStringKey {
        switch self {
        case .unexpected(let error):
            return error.localizedKey
        }
    }
    
    var primaryBtnTitle: LocalizedStringKey {
        switch self {
        default:
            return "OK"
        }
    }
    
    var primaryBtnAction: (() -> Void)? {
        switch self {
        default: return nil
        }
    }
    
    var secondaryBtnTitle: LocalizedStringKey? {
        switch self {
        default:
            return nil
        }
    }
    
    var secondaryBtnAction: (() -> Void)? {
        switch self {
        default: return nil
        }
    }
    
}


