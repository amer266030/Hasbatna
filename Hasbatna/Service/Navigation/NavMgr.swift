//
//  NavMgr.swift
//  Hasbatna
//
//  Created by Amer Alyusuf on 31/08/2025.
//

import SwiftUI

@Observable
class NavMgr: ObservableObject {
    var path = NavigationPath()
    
    static let shared = NavMgr()
    
    private init() {}
    
    /// Push a new route onto the stack
    @MainActor
    func push(_ route: AppRoute) {
        withAnimation(.easeInOut(duration: 0.4)) {
            path.append(route)
        }
    }

    /// Pop the last screen from the stack
    @MainActor
    func pop() {
        if path.count > 0 {
            withAnimation(.easeOut(duration: 0.5)) {
                path.removeLast()
            }
        }
    }
    
    /// Pop multiple screens
    @MainActor
    func pop(times: Int) {
        guard times > 0 else { return }

        let safeCount = min(times, path.count)
        withAnimation(.easeOut(duration: 0.5)) {
            path.removeLast(safeCount)
        }
    }

    /// Reset to root
    @MainActor
    func reset() {
        Task {
            path = NavigationPath()
            try? await Task.sleep(nanoseconds: 3_000_000_000)
        }
    }
    
    /// Replace the navigation stack with a new route
    @MainActor
    func replaceWith(_ route: AppRoute) {
        withAnimation(.easeInOut(duration: 0.5)) {
            path = NavigationPath()
            path.append(route)
        }
    }
}

