//
//  ProductViewModel.swift
//  ProgrammaticNavigation
//
//  Created by Danielle Abrams on 5/23/25.
//

import Foundation

class ProductViewModel: ObservableObject {
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func navigateToRelatedProduct(id: Int) {
        router.navigate(to: .productDetail(productId: id))
    }
    
    func backToList() {
        router.navigateBack()
    }
    
    func addToCart() {
        print("Product added to basket")
        router.navigateBack()
    }
}
