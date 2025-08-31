//
//  LanguageModifier.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

public struct LanguageModifier: ViewModifier {
    @AppStorage("isEnglish") var isEnglish: Bool = true
    
    public func body(content: Content) -> some View {
        content
            .environment(\.locale, .init(identifier: isEnglish ? "en" : "ar"))
            .environment(\.layoutDirection, isEnglish ? .leftToRight : .rightToLeft)
    }
}

extension View {
    func languageModifier() -> some View {
        self.modifier(LanguageModifier())
    }
}
