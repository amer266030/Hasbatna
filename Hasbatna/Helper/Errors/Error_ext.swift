//
//  Error_ext.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import Foundation
import SwiftUI

protocol AppError: Error {
    var localizedKey: LocalizedStringKey { get }
}

extension Error {
    var localizedKey: LocalizedStringKey {
        (self as? AppError)?.localizedKey ?? LocalizedStringKey(self.localizedDescription)
    }
}
