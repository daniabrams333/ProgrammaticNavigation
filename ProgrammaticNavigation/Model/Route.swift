//
//  Route.swift
//  ProgrammaticNavigation
//
//  Created by Danielle Abrams on 5/23/25.
//

/// definition of all possible navigation destinations. Each case represents a unique screen or view that users can navigate to.
///

import Foundation

enum Route: Hashable {
    case home
    case detail(id: Int)
    case profile(username: String)
    case settings
    case categories(categoryId: Int)
    case productList(categoryId: Int)
    case productDetail(productId: Int)
}
