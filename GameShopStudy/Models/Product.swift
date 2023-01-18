//
//  Product.swift
//  GameShopStudy
//
//  Created by Adriano Souza Costa on 18/01/23.
//

import Foundation

struct Product: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var image: String
    var price: Double
}

var productList: [Product] = [
    .init(name: "Zelda Breath Of The Wild", image: "zbotw", price: 299),
    .init(name: "Mario Kart", image: "mario-kart", price: 199),
    .init(name: "Just Dance", image: "just-dance", price: 99),
    .init(name: "Pokemon", image: "pokemon", price: 299),
    .init(name: "Zelda Breath Of The Wild", image: "zbotw", price: 299),
    .init(name: "Mario Kart", image: "mario-kart", price: 199),
    .init(name: "Just Dance", image: "just-dance", price: 99),
    .init(name: "Pokemon", image: "pokemon", price: 299)
]
