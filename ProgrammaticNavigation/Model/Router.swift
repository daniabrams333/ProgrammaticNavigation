//
//  Router.swift
//  ProgrammaticNavigation
//
//  Created by Danielle Abrams on 5/23/25.
//

import SwiftUI

class Router: ObservableObject {
    @Published var path = NavigationPath()
    
    // ...methods
    
    /// function that adds a new destination to the navigation stack
    /// pushes a new view onto the navigation hierarchy
    /// handles forward navigation
    
    func navigate(to route: Route) {
        path.append(route)
    }
    
    /// removes the current view from the navigation stack
    /// returns to the previous screen
    /// handles backward navigation
    
    func navigateBack() {
        path.removeLast()
    }
    
    /// function to clear  the entire navigation stack.
    /// returns to the root / home view
    /// handles complete navigaiton reset.
    
    func navigateToRoot() {
        path.removeLast(path.count)
    }
    
    /// A function removes a specific number of views from the stack
    /// enables custom back navigation
    /// handles partial stack clearing
    
    func popToView(count: Int) {
        path.removeLast(count)
    }
    
    
}

/// Checks if backward navigation is possible
///  Prevents navigation errors.
/// Enables safe navigation handling.


extension Router {
    func canNavigateBack() -> Bool {
        return path.count > 0
    }
}

