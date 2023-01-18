//
//  CartView.swift
//  GameShopStudy
//
//  Created by Adriano Souza Costa on 18/01/23.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject private var cartManager: CartManager
    
    var body: some View {
        VStack {
            Text("Quantidade itens: \(cartManager.productsCount)")
            Text("Total do carrinho: \(cartManager.total.formatedPrice() ?? "")")
        }.navigationTitle("My Cart")
    }
    
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
