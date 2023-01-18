//
//  CartManager.swift
//  GameShopStudy
//
//  Created by Adriano Souza Costa on 18/01/23.
//

import Foundation

class CartManager: ObservableObject {
    
    @Published private var products: [Product] = []
    
    var productsCount: Int {
        products.count
    }
    
    var total: Double {
        products.reduce(0.0) { $0 + $1.price }
    }
    
    func add(product: Product) {
        products.append(product)
    }
    
    func remove(product: Product) {
        products.removeAll { $0.id == product.id }
    }
    
}
