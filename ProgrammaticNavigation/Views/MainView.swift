//
//  MainView.swift
//  ProgrammaticNavigation
//
//  Created by Danielle Abrams on 5/23/25.
//

import SwiftUI

/// the root navigation container for the entire app. The HomeView is the root and the navigationDestination modifier defines how different routes map to their respective views.
///

struct MainView: View {
    /// persists throughout the application and manages all the navigation state
    ///
    
    @StateObject private var router = Router()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            HomeView()
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .home:
                        HomeView()
                    case .detail(let id):
                        DetailView(id: id)
                    case .profile(let username):
                        ProfileView(username: username)
                    case .settings:
                        SettingsView()
                    case .categories(let categoryId):
                        CategoryView(categoryId: categoryId)
                    case .productList(let categoryId):
                                            ProductListView(categoryId: categoryId)
                                        case .productDetail(let productId):
                                            ProductDetailView(router: router, productId: productId)
                    }
                }
        }
        .environmentObject(router)
    }
}

#Preview {
    MainView()
}
