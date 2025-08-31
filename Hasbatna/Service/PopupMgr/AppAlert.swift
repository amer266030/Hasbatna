//
//  AppAlert.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

protocol AppAlert {
    var iconName: String { get }
    var iconColor: Color { get }
    var title: LocalizedStringKey { get }
    var message: LocalizedStringKey { get }
    var primaryBtnTitle: LocalizedStringKey { get }
    var primaryBtnAction: (() -> Void)? { get }
    var secondaryBtnTitle: LocalizedStringKey? { get }
    var secondaryBtnAction: (() -> Void)? { get }
}
