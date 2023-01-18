//
//  ContentView.swift
//  GameShopStudy
//
//  Created by Adriano Souza Costa on 13/01/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    
    var columns: [GridItem] = [
        .init(.adaptive(minimum: 160), spacing: 10)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }.padding()
            }
            .navigationTitle(Text("Game Shop"))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.productsCount)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
