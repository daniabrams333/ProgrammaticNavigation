//
//  ProductListView.swift
//  ProgrammaticNavigation
//
//  Created by Danielle Abrams on 5/23/25.
//

import SwiftUI

struct ProductListView: View {
    @EnvironmentObject private var router: Router
    let categoryId: Int
    
    var body: some View {
        List(1...5, id: \.self) { productId in
            Button("Product \(productId)") {
                router.navigate(to: .productDetail(productId: productId))
            }
        }
    }
}

//#Preview {
//    ProductListView()
//}
