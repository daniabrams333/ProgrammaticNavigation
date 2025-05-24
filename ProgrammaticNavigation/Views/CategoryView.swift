//
//  CategoryView.swift
//  ProgrammaticNavigation
//
//  Created by Danielle Abrams on 5/23/25.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject private var router: Router
    let categoryId: Int
    
    var body: some View {
        VStack {
            Text("Category \(categoryId)")
            
            Button("Go To Product Lists") {
                router.navigate(to: .productList(categoryId: categoryId))
            }
        }
    }
}

//#Preview {
//    CategoryView()
//}
