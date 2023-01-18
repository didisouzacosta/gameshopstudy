//
//  ContentView.swift
//  GameShopStudy
//
//  Created by Adriano Souza Costa on 13/01/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass)
    private var sizeClass
    
    @StateObject
    private var cartManager = CartManager()
    
    private var gridCompactLayout: [GridItem] = (0...1).map { _ in GridItem() }
    private var gridLargeLayout: [GridItem] = (0...3).map { _ in GridItem() }
    
    private var isCompact: Bool {
        sizeClass == .compact
    }
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: isCompact ? gridCompactLayout : gridLargeLayout) {
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
