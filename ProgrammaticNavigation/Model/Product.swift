//
//  Product.swift
//  ProgrammaticNavigation
//
//  Created by Danielle Abrams on 5/23/25.
//

import Foundation

struct Product: Identifiable, Hashable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let category: ProductCategory
    var isFavorite: Bool
    let stock: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Product, rhs: Product) -> Bool {
        lhs.id == rhs.id
    }
}


enum ProductCategory: String {
    case electronics = "Electronics"
    case clothing = "Clothing"
    case books = "Books"
    case sports = "Sports"
}
